CASE iState OF
    0:
      IF xEN THEN
         iState := 1;
      END_IF;   
    1:
      IF NOT xFirstRun THEN (*Existing Alarms counting - by the alarm text presence*)
         FOR iAlmCnt := 1 TO 200 DO
             IF LEN(udtALM[iAlmCnt].wstrALMText) = 0 THEN EXIT;
             END_IF;
         END_FOR;
         iAlmCnt   := iAlmCnt - 1;
         FOR i := 1 TO iAlmCnt DO
            udtALM[i].xAlmLastFlag := udtALM[i].xAlmFlag;
            udtALM[i].iAlmNum := i;
            IF udtALM[i].xAlmFlag THEN
               udtALM[i].wsREFE := "🠕";
            ELSE
               udtALM[i].wsREFE := "🠗";
            END_IF;   
         END_FOR;    
         xFirstRun := TRUE;
      END_IF;
      iState := 2;
    2:
      iCount := iCount + 1;
      IF udtALM[iCount].xAlmFlag AND NOT udtALM[iCount].xAlmLastFlag THEN
         xREDetected := TRUE;  // Rising edge detected
         udtALM[iCount].wsREFE := "🠕";
      ELSIF NOT udtALM[iCount].xAlmFlag AND udtALM[iCount].xAlmLastFlag THEN
         xFEDetected := TRUE;  // Falling edge detected
         udtALM[iCount].wsREFE := "🠗";
      ELSE
         xREDetected := FALSE;
         xFEDetected := FALSE;   
      END_IF;
      udtALM[iCount].xAlmLastFlag := udtALM[iCount].xAlmFlag;
      iState := 3;
    3: 
      IF xREDetected OR xFEDetected THEN
         IF udtALMLST[1].iAlmNum = iCount AND udtALMLST[1].wsREFE = udtALM[iCount].wsREFE THEN
            xStrExists := TRUE;                  // Input string already exists  
         ELSE
            xStrExists := FALSE;
         END_IF;
      IF NOT xStrExists THEN
         FOR i := 25 TO 2 BY -1 DO
             udtALMLST[i] := udtALMLST[i - 1];   // Shift strings down
         END_FOR;
         udtALMLST[1] := udtALM[iCount];
         udtALMLST[1].sTime := sDT;
      END_IF;
      END_IF;
      IF iCount >= iAlmCnt THEN
         iCount := 0;
      END_IF;
      iState := 0;
END_CASE;