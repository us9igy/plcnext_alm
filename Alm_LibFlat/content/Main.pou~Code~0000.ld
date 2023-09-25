<?xml version="1.0" encoding="utf-8"?>
<body xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
 <LD>
  <inVariable localId="8" height="4" width="8" executionOrderId="1">
   <position x="71" y="36" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>TRUE</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="15" height="4" width="13" executionOrderId="1">
   <position x="66" y="16" />
   <connectionPointOut>
    <relPosition x="13" y="2" />
   </connectionPointOut>
   <expression>strFormat</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation networkId="2" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <block localId="10" width="23" height="8" typeName="PBCL_DateTimeGetString_1" executionOrderId="2">
   <position x="81" y="12" />
   <inputVariables>
    <variable formalParameter="strFormat">
     <connectionPointIn>
      <relPosition x="0" y="6" />
      <connection refLocalId="15">
       <position x="81" y="18" />
       <position x="79" y="18" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation useAutoConnector="false" useUserConnector="false" implicitMultiRouted="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
   </inputVariables>
   <inOutVariables />
   <outputVariables>
    <variable formalParameter="PBCL_DateTimeGetString_1" hidden="true">
     <connectionPointOut>
      <relPosition x="23" y="6" />
     </connectionPointOut>
    </variable>
   </outputVariables>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation networkId="2" subNetworkId="0" />
    </data>
    <data name="blockInformation" handleUnknown="preserve">
     <blockInformation canEditLabel="false" extensible="false" imageWidth="8" imageHeight="0" />
    </data>
    <data name="parameterInformations" handleUnknown="preserve">
     <parameterInformations>
      <parameterInformation formalParameter="strFormat" localId="11" executionOrderId="2" editorParameter="false" priority="1" />
      <parameterInformation formalParameter="PBCL_DateTimeGetString_1" localId="12" executionOrderId="2" editorParameter="false" priority="2" />
     </parameterInformations>
    </data>
   </addData>
  </block>
  <inVariable localId="13" height="4" width="8" executionOrderId="2">
   <position x="71" y="40" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>sDT</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="6" height="4" width="8" executionOrderId="3">
   <position x="71" y="44" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>udtALM</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <outVariable localId="14" height="4" width="8" executionOrderId="3">
   <position x="106" y="16" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="10" formalParameter="PBCL_DateTimeGetString_1">
     <position x="106" y="18" />
     <position x="104" y="18" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation useAutoConnector="false" useUserConnector="false" implicitMultiRouted="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>sDT</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation networkId="2" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <block localId="1" width="18" height="16" typeName="Alarms" instanceName="Alarms1" executionOrderId="4">
   <position x="81" y="32" />
   <inputVariables>
    <variable formalParameter="xEN">
     <connectionPointIn>
      <relPosition x="0" y="6" />
      <connection refLocalId="8">
       <position x="81" y="38" />
       <position x="79" y="38" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation useAutoConnector="false" useUserConnector="false" implicitMultiRouted="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
    <variable formalParameter="sDT">
     <connectionPointIn>
      <relPosition x="0" y="10" />
      <connection refLocalId="13">
       <position x="81" y="42" />
       <position x="79" y="42" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation useAutoConnector="false" useUserConnector="false" implicitMultiRouted="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
   </inputVariables>
   <inOutVariables>
    <variable formalParameter="udtALM">
     <connectionPointIn>
      <relPosition x="0" y="14" />
      <connection refLocalId="6">
       <position x="81" y="46" />
       <position x="79" y="46" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation useAutoConnector="false" useUserConnector="false" implicitMultiRouted="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
     <connectionPointOut>
      <relPosition x="18" y="14" />
     </connectionPointOut>
    </variable>
   </inOutVariables>
   <outputVariables>
    <variable formalParameter="udtALMLST">
     <connectionPointOut>
      <relPosition x="18" y="6" />
     </connectionPointOut>
    </variable>
   </outputVariables>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation networkId="1" subNetworkId="0" />
    </data>
    <data name="blockInformation" handleUnknown="preserve">
     <blockInformation canEditLabel="true" extensible="false" imageWidth="8" imageHeight="0" />
    </data>
    <data name="parameterInformations" handleUnknown="preserve">
     <parameterInformations>
      <parameterInformation formalParameter="xEN" localId="2" executionOrderId="4" negatable="true" editorParameter="false" priority="1" />
      <parameterInformation formalParameter="sDT" localId="3" executionOrderId="4" editorParameter="false" priority="2" />
      <parameterInformation formalParameter="udtALMLST" localId="4" executionOrderId="4" editorParameter="false" priority="3" />
      <parameterInformation formalParameter="udtALM" localId="5" executionOrderId="4" editorParameter="false" priority="4" />
     </parameterInformations>
    </data>
   </addData>
  </block>
  <outVariable localId="9" height="4" width="13" executionOrderId="5">
   <position x="101" y="36" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="udtALMLST">
     <position x="101" y="38" />
     <position x="99" y="38" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation useAutoConnector="false" useUserConnector="false" implicitMultiRouted="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>udtALMLST</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
  <outVariable localId="7" height="4" width="8" executionOrderId="6">
   <position x="101" y="44" />
   <connectionPointIn>
    <relPosition x="0" y="2" />
    <connection refLocalId="1" formalParameter="udtALM">
     <position x="101" y="46" />
     <position x="99" y="46" />
     <addData>
      <data name="connectionInformation" handleUnknown="preserve">
       <connectionInformation useAutoConnector="false" useUserConnector="false" implicitMultiRouted="false" invisible="false" wasExplicitFeedback="false" />
      </data>
     </addData>
    </connection>
   </connectionPointIn>
   <expression>udtALM</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </outVariable>
 </LD>
 <addData>
  <data name="docInformation" handleUnknown="preserve">
   <docInformation gridActive="true" pageWidth="-1">
    <version>2.6.4.129.0:A1.10</version>
    <multilineOptions maximumContactWidth="18" minimumContactWidth="18" maximumContactLines="7" contactEllipse="true" maximumInstanceNameWidth="32" maximumInstanceNameLines="5" instanceNameEllipse="true" maximumVariableWidth="2147483647" variableEllipse="false" />
   </docInformation>
  </data>
 </addData>
</body>