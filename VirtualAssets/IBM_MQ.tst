---
parasoftVersion: 2026.1.2
productVersion: 10.7.5
schemaVersion: 04
suite:
  $type: TestSuite
  name: Test Suite
  hasEnvironmentConfig: true
  lastModifiedBy: brajagopal
  dataSources:
  - id: ds_-1446729792_1789990491294_2119895580
    impl:
      $type: WritableDataSource
      model:
        columnCount: 1
        columnIdentifiers:
        - response
        rows:
        - - "{\"message\":\"Virtual Reply from IBM MQ LISTENER\",\"time\":\"2026-09-21\
            \ 17:06:21.390\"}"
        - - "{\"message\":\"Virtual Reply from IBM MQ LISTENER TO CLUSTER QUEUE\"\
            ,\"time\":\"2026-09-23 14:43:36.726\"}"
        - - "{\"message\":\"Virtual Reply from IBM MQ LISTENER\",\"time\":\"2026-09-23\
            \ 15:02:09.405\"}"
        - - "{\"message\":\"Virtual Reply from IBM MQ LISTENER TO CLUSTER QUEUE\"\
            ,\"time\":\"2026-09-23 15:02:19.052\"}"
        - - "{\"message\":\"Virtual Reply from IBM MQ LISTENER TO CLUSTER QUEUE\"\
            ,\"time\":\"2026-09-23 15:05:52.383\"}"
      writingMode: 3
    name: New Datasource
    useAllRows: true
  tests:
  - $type: HTTPClientToolTest
    name: Messaging Client
    testID: 1
    tool:
      $type: HTTPClient
      dataSourceNames:
      - New Datasource
      iconName: HTTPClient
      name: Messaging Client
      formJson:
        value:
          $type: ElementValue
          writeType: true
          type:
            $type: ElementType
            localName: root
            bodyType:
              $type: ComplexType
              attributes:
              - ns: ""
                name: type
                fixed: object
                contentType:
                  $type: StringType
                required: true
              name: rootType
              compositor: true
              compositorObj:
                $type: AllCompositor
          replacedColumn: ""
          values:
          - $type: ComplexValue
            replacedColumn: ""
            attributes:
            - replacedColumn: ""
              value:
                $type: StringValue
                replacedColumn: ""
                value: object
              useValue: true
            compositorValue: true
            compositorValueObj:
              replacedColumn: ""
              values:
                $type: CompositorValueSetCollectionSet
                set:
                - $type: CompositorValueSet
        elementTypeName: root
      hasServiceInfo: true
      serviceInfo:
        serviceDescriptor:
          $type: StandardServiceDescriptor
          location: ""
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
      formInput:
        value:
          $type: ElementValue
          writeType: true
          type:
            $type: ElementType
            localName: ""
            bodyType:
              $type: ComplexType
              name: anonymous
              compositor: true
              compositorObj:
                $type: SequenceCompositor
          replacedColumn: ""
          values:
          - $type: ComplexValue
            replacedColumn: ""
            compositorValue: true
            compositorValueObj:
              replacedColumn: ""
              values:
                $type: CompositorValueSetCollectionSet
                set:
                - $type: CompositorValueSet
      timeout:
        useDefault: false
        timeout: 300000
      jmsMessageOutputProvider:
        $type: JMSMessageOutputProvider
        jmsOutputProviderRequest:
          $type: JMSOutputProvider
          name: Request Object
          menuName: Object
        jmsOutputProviderResponse:
          $type: JMSOutputProvider
          name: Response Message Object
          menuName: Message Object
      transportProperties:
        manager:
          protocol: 3
          properties:
          - $type: HTTPClientHTTPProperties
            followRedirects:
              bool: true
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: POST
            protocol: 1
            keepAlive1_1:
              bool: true
          - $type: MQProperties
            mqrfh2fields:
              version:
                name: Version
                value:
                  fixedValue:
                    $type: StringTestValue
              encoding:
                name: Encoding
                value:
                  fixedValue:
                    $type: StringTestValue
              codedCharSetId:
                name: CodedCharSetId
                value:
                  fixedValue:
                    $type: StringTestValue
              format:
                name: Format
                value:
                  fixedValue:
                    $type: StringTestValue
              flags:
                name: Flags
                value:
                  fixedValue:
                    $type: StringTestValue
              nameValueCodedCharSetId:
                name: NameValueCodedCharSetId
                value:
                  fixedValue:
                    $type: StringTestValue
            mcd:
              msd:
                name: Message Service Domain
                value:
                  fixedValue:
                    $type: StringTestValue
              set:
                name: Message Set
                value:
                  fixedValue:
                    $type: StringTestValue
              type:
                name: Message Type
                value:
                  fixedValue:
                    $type: StringTestValue
              fmt:
                name: Output Format
                value:
                  fixedValue:
                    $type: StringTestValue
            psc:
              command: 1
              subIdentity:
                name: SubIdentity
                value:
                  fixedValue:
                    $type: StringTestValue
              qName:
                name: QName
                value:
                  fixedValue:
                    $type: StringTestValue
              qMgrName:
                name: QMgrName
                value:
                  fixedValue:
                    $type: StringTestValue
              subPoint:
                name: SubPoint
                value:
                  fixedValue:
                    $type: StringTestValue
              filter:
                name: Filter
                value:
                  fixedValue:
                    $type: StringTestValue
              subName:
                name: SubName
                value:
                  fixedValue:
                    $type: StringTestValue
              subUserData:
                name: SubUserData
                value:
                  fixedValue:
                    $type: StringTestValue
            jms:
              destination:
                name: Destination
                value:
                  fixedValue:
                    $type: StringTestValue
              replyTo:
                name: Reply To
                value:
                  fixedValue:
                    $type: StringTestValue
              timestamp:
                name: Timestamp
                value:
                  fixedValue:
                    $type: StringTestValue
              expiration:
                name: Expiration
                value:
                  fixedValue:
                    $type: StringTestValue
              correlationId:
                name: Correlation Id
                value:
                  fixedValue:
                    $type: StringTestValue
              priority:
                name: Priority
                value:
                  fixedValue:
                    $type: StringTestValue
              deliveryMode:
                name: Delivery Mode
                value:
                  fixedValue:
                    $type: StringTestValue
            mqQueueManager:
              ccsid:
                name: CCSID
                value:
                  fixedValue:
                    $type: StringTestValue
            mqSSL:
              peerName:
                name: Peer Name
                value:
                  fixedValue:
                    $type: StringTestValue
              cipherSuite:
                $type: EnumNameValuePair
                name: CipherSuite
                value:
                  fixedValue:
                    $type: StringTestValue
            conn:
              putManagerId:
                name: Put Manager Id
                value:
                  fixedValue:
                    $type: StringTestValue
              getManagerId:
                name: Get Manager Id
                value:
                  fixedValue:
                    $type: StringTestValue
              channel:
                name: Channel
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: MY.CLIENT.CHANNEL
              host:
                name: Host
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: localhost
              port:
                name: Port
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: 1414
              manager:
                name: Queue Manager
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: QM1
              putQueue:
                name: Put Queue
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: TEST.QUEUE2
              getQueue:
                name: Get Queue
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: TEST.QUEUE3
              auth:
                service:
                  name: Service
                  value:
                    fixedValue:
                      $type: StringTestValue
                useAuth: true
                username:
                  name: Username
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: brajagopal
                password:
                  name: Password
                  value:
                    fixedValue:
                      $type: PasswordTestValue
                      password: AwAAACxqU1IzQzlVZEpraFNVMFBIb0xFWGdrZFhaQ3AwWUlyR2hMS0lpNnozWnVBPQ==
            mqpmMisc:
              applicationIdData:
                name: Application ID data
                value:
                  fixedValue:
                    $type: StringTestValue
              correlationID:
                name: Correlation ID
                value:
                  fixedValue:
                    $type: StringTestValue
              expiry:
                name: Expiry (in tenths of a second)
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: -1
              messageSequenceNumber:
                name: Message sequence number
                value:
                  fixedValue:
                    $type: StringTestValue
              replyToQueueManagerName:
                name: Reply queue manager name
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: QM1
              replyToQueueName:
                name: Reply queue name
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: TEST.QUEUE1
              putApplicationName:
                name: Put application name
                value:
                  fixedValue:
                    $type: StringTestValue
              applicationOriginData:
                name: Originating application data
                value:
                  fixedValue:
                    $type: StringTestValue
              userId:
                name: User ID
                value:
                  fixedValue:
                    $type: StringTestValue
            mqgmMisc:
              correlationID:
                name: Correlation Id
                value:
                  fixedValue:
                    $type: StringTestValue
              waitInterval:
                name: Wait Interval(in milliseconds)
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: -1
          - $type: HTTPClientHTTPProperties
            followRedirects:
              bool: true
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: POST
            keepAlive1_1:
              bool: true
        messageExchangePattern:
          inverted: true
      outputProviders:
        requestHeader:
          $type: HTTPNamedToolOutputProvider
          menuName: Transport Header
          name: Request Transport Header
        responseHeader:
          $type: HTTPNamedToolOutputProvider
          menuName: Transport Header
          name: Response Transport Header
        xmlRequestOutput:
          $type: NamedXMLToolOutputProvider
          menuName: Traffic
          name: Request Traffic
        trafficOutput:
          m_name: Traffic Stream
        objectOutput:
          $type: ObjectOutputProvider
          outputTools:
          - $type: TrafficViewer
            iconName: TrafficViewer
            name: Traffic Viewer
            showRequestHeaders: true
            showResponseHeaders: true
          name: Traffic Object
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: HI IBM MQ
          type: text/xml
      mode: Literal
  - $type: ToolTest
    name: Extension Tool
    testID: 2
    tool:
      $type: MethodTool
      dataSourceNames:
      - New Datasource
      iconName: Method
      name: Extension Tool
      method:
        hasCode: true
        code:
          $type: ScriptCode
          input:
            useText: true
            textInput:
              $type: ScriptingTextInput
              text: "import com.ibm.mq.*\r\nimport com.ibm.mq.constants.*\r\nimport\
                \ com.parasoft.api.*;\r\n\r\ndef sendMQRequest()\r\n        \r\n {\r\
                \n        \r\n        def queueManagerName=\"QM1\"\r\n\r\n\t\tdef\
                \ host=\"localhost\"\r\n\r\n\t\tdef port=1414\r\n\t\r\n\t\tdef channel=\"\
                MY.CLIENT.CHANNEL\"\r\n\r\n\t\tdef requestQueue=\"TEST.QUEUE2\"\r\n\
                \r\n\t\tdef replyQueue=\"TEST.QUEUE3\"\r\n\r\n\t\tdef payload=\"Test\
                \ Request\"\r\n\r\n   \t\tMQQueueManager qMgr = null\r\n    \tMQQueue\
                \ queue = null\r\n\r\n    \ttry\r\n    \t{\r\n\r\n        \t// Connection\
                \ properties\r\n        \tMQEnvironment.hostname = host\r\n      \
                \  \tMQEnvironment.port = port\r\n        \tMQEnvironment.channel\
                \ = channel\r\n        \tMQEnvironment.properties.put(MQC.TRANSPORT_PROPERTY,MQC.TRANSPORT_MQSERIES_CLIENT)\r\
                \n\r\n        \tqMgr = new MQQueueManager(queueManagerName)\r\n\r\n\
                \       \t\tqueue = qMgr.accessQueue(requestQueue,MQC.MQOO_OUTPUT)\r\
                \n\r\n        \tMQMessage msg = new MQMessage()\r\n\r\n        \t\
                // Set Reply-To information\r\n       \t\tmsg.replyToQueueName = replyQueue\r\
                \n        \tmsg.replyToQueueManagerName = queueManagerName\r\n\r\n\
                \       \t\t// Let MQ generate MessageId\r\n        \tmsg.messageId\
                \ = MQC.MQMI_NONE\r\n\r\n        \t// Write payload\r\n        \t\
                msg.writeString(payload)\r\n\r\n       \t\tMQPutMessageOptions pmo\
                \ = new MQPutMessageOptions()\r\n\r\n\t        queue.put(msg, pmo)\r\
                \n\r\n    \t    Application.showMessage( \"===================================\"\
                )\r\n        \t  Application.showMessage(  \"Message sent successfully\"\
                )\r\n\t          Application.showMessage(  \"Request Queue : \" +requestQueue)\r\
                \n    \t      Application.showMessage(  \"ReplyToQ      : \" +msg.replyToQueueName)\r\
                \n        \t  Application.showMessage(  \"ReplyToQMgr   : \" +msg.replyToQueueManagerName)\r\
                \n\t          Application.showMessage(  \"Payload       : \" +payload)\r\
                \n\t          Application.showMessage(  \"===================================\"\
                )\r\n\r\n    \t} \r\n    \t\r\n    \tfinally\r\n    \t{\r\n\r\n  \
                \      \tif (queue != null)\r\n        \t{\r\n           \t queue.close()\r\
                \n        \t}\r\n\r\n        \tif (qMgr != null)\r\n        \t{\r\n\
                \            \tqMgr.disconnect()\r\n       \t\t}\r\n   \t\t}\r\n}"
        hasMethodId: true
        methodId:
          $type: ScriptMethodIdentifier
          functionName: sendMQRequest
    writeInput: true
    inputType: InputUsable
    input:
      use: 1
      text:
        text: ""
        type: text/plain
  - $type: ToolTest
    name: Extension Tool 2
    testID: 3
    tool:
      $type: MethodTool
      dataSourceNames:
      - New Datasource
      iconName: Method
      name: Extension Tool 2
      outputProvider:
        outputTools:
        - $type: Edit
          allowToolbar: false
          iconName: Editor
          name: Edit
        - $type: GenericDataBank
          dataSourceNames:
          - New Datasource
          iconName: XMLDataBank
          name: JSON Data Bank
          wrappedTool:
            $type: XMLtoDataSource
            dataSourceNames:
            - New Datasource
            iconName: XMLDataBank
            name: XML Data Bank
            selectedXPaths:
            - elementOption: 1
              contentOption: 2
              XMLDataBank_ExtractXPath: /root
              target: 1
              mode: 1
            canonicalizeOutput: true
            xmlMessage: true
            virtualDSCreator:
              writableColumns:
              - dataSourceNames:
                - "New Datasource: response"
                mode: 2
                customName: "Test 3: root"
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
      method:
        hasCode: true
        code:
          $type: ScriptCode
          input:
            useText: true
            textInput:
              $type: ScriptingTextInput
              text: "import com.ibm.mq.*\r\nimport com.ibm.mq.constants.*\r\nimport\
                \ com.parasoft.api.*\r\n\r\ndef sendMQRequest() {\r\n\r\n    def queueManagerName\
                \ = \"QM1\"\r\n    def host = \"localhost\"\r\n    def port = 1414\r\
                \n    def channel = \"MY.CLIENT.CHANNEL\"\r\n\r\n    def requestQueue\
                \ = \"TEST.QUEUE2\"\r\n    \r\n    def replyQueue = \"TEST.QUEUE3\"\
                \r\n\r\n    def payload = \"Test Request\"\r\n\r\n    MQQueueManager\
                \ qMgr = null\r\n    MQQueue reqQ = null\r\n    MQQueue repQ = null\r\
                \n\r\n    try {\r\n\r\n        MQEnvironment.hostname = host\r\n \
                \       MQEnvironment.port = port\r\n        MQEnvironment.channel\
                \ = channel\r\n        MQEnvironment.properties.put(\r\n         \
                \   MQC.TRANSPORT_PROPERTY,\r\n            MQC.TRANSPORT_MQSERIES_CLIENT\r\
                \n        )\r\n\r\n        qMgr = new MQQueueManager(queueManagerName)\r\
                \n\r\n        // Open request queue\r\n        reqQ = qMgr.accessQueue(\r\
                \n            requestQueue,\r\n            MQC.MQOO_OUTPUT\r\n   \
                \     )\r\n\r\n        MQMessage requestMsg = new MQMessage()\r\n\r\
                \n        requestMsg.replyToQueueName = replyQueue\r\n        requestMsg.replyToQueueManagerName\
                \ = queueManagerName\r\n        requestMsg.messageId = MQC.MQMI_NONE\r\
                \n\r\n        requestMsg.writeString(payload)\r\n\r\n        MQPutMessageOptions\
                \ pmo = new MQPutMessageOptions()\r\n\r\n        reqQ.put(requestMsg,\
                \ pmo)\r\n\r\n        // Save generated MessageId\r\n        byte[]\
                \ requestMsgId = requestMsg.messageId\r\n\r\n        Application.showMessage(\"\
                Request sent\")\r\n        Application.showMessage(\"Reply Queue :\
                \ \" + replyQueue)\r\n        Application.showMessage(\"MsgId    \
                \   : \" + bytesToHex(requestMsgId))\r\n\r\n        // Open reply\
                \ queue for reading\r\n        repQ = qMgr.accessQueue(\r\n      \
                \      replyQueue,\r\n            MQC.MQOO_INPUT_AS_Q_DEF\r\n    \
                \    )\r\n\r\n        MQMessage responseMsg = new MQMessage()\r\n\r\
                \n        // Match response CorrelationId to request MessageId\r\n\
                \        responseMsg.correlationId = requestMsgId\r\n\r\n        MQGetMessageOptions\
                \ gmo = new MQGetMessageOptions()\r\n        gmo.options =\r\n   \
                \             MQC.MQGMO_WAIT |\r\n                MQC.MQGMO_FAIL_IF_QUIESCING\r\
                \n\r\n        gmo.waitInterval = 30000    // 30 seconds\r\n\r\n  \
                \      Application.showMessage(\"Waiting for reply...\")\r\n\r\n \
                \       repQ.get(responseMsg, gmo)\r\n\r\n        int len = responseMsg.getDataLength()\r\
                \n        String response = responseMsg.readStringOfByteLength(len)\r\
                \n\r\n        Application.showMessage(\"===================================\"\
                )\r\n        Application.showMessage(\"Response Received\")\r\n  \
                \      Application.showMessage(\"CorrelationId : \"\r\n          \
                \      + bytesToHex(responseMsg.correlationId))\r\n        Application.showMessage(\"\
                Payload       : \" + response)\r\n        Application.showMessage(\"\
                ===================================\")\r\n\r\n        return response\r\
                \n\r\n    } catch (MQException e) {\r\n\r\n        Application.showMessage(\r\
                \n            \"MQ Error: Reason Code=\"\r\n                    +\
                \ e.reasonCode\r\n                    + \", CompCode=\"\r\n      \
                \              + e.completionCode)\r\n\r\n        throw e\r\n\r\n\
                \    } finally {\r\n\r\n        if (reqQ != null) {\r\n          \
                \  reqQ.close()\r\n        }\r\n\r\n        if (repQ != null) {\r\n\
                \            repQ.close()\r\n        }\r\n\r\n        if (qMgr !=\
                \ null) {\r\n            qMgr.disconnect()\r\n        }\r\n    }\r\
                \n}\r\n\r\ndef bytesToHex(byte[] bytes) {\r\n    StringBuilder sb\
                \ = new StringBuilder()\r\n    for (byte b : bytes) {\r\n        sb.append(String.format(\"\
                %02X\", b))\r\n    }\r\n    return sb.toString()\r\n}"
        hasMethodId: true
        methodId:
          $type: ScriptMethodIdentifier
          functionName: sendMQRequest
    writeInput: true
    inputType: InputUsable
    input:
      use: 1
      text:
        text: ""
        type: text/plain
      dataSource:
        columnName: response
  - $type: ToolTest
    name: Extension Tool 3
    testID: 4
    tool:
      $type: MethodTool
      dataSourceNames:
      - New Datasource
      iconName: Method
      name: Extension Tool 3-Cluster QM2
      outputProvider:
        outputTools:
        - $type: Edit
          allowToolbar: false
          iconName: Editor
          name: Edit
        - $type: GenericDataBank
          dataSourceNames:
          - New Datasource
          iconName: XMLDataBank
          name: JSON Data Bank
          wrappedTool:
            $type: XMLtoDataSource
            dataSourceNames:
            - New Datasource
            iconName: XMLDataBank
            name: XML Data Bank
            selectedXPaths:
            - elementOption: 1
              contentOption: 2
              XMLDataBank_ExtractXPath: /root
              target: 1
              mode: 1
            canonicalizeOutput: true
            xmlMessage: true
            virtualDSCreator:
              writableColumns:
              - dataSourceNames:
                - "New Datasource: response"
                mode: 2
                customName: "Test 3: root"
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
      method:
        hasCode: true
        code:
          $type: ScriptCode
          input:
            useText: true
            textInput:
              $type: ScriptingTextInput
              text: "import com.ibm.mq.*\r\nimport com.ibm.mq.constants.*\r\nimport\
                \ com.parasoft.api.*\r\n\r\ndef sendMQRequest() {\r\n\r\n    def queueManagerName\
                \ = \"QM2\"\r\n    def host = \"localhost\"\r\n    def port = 1415\r\
                \n    def channel = \"MY.CLIENT.CHANNEL\"\r\n\r\n    def requestQueue\
                \ = \"CLUSTER.REQUEST.Q\"\r\n    def replyQueue = \"TEST.REPLY.Q\"\
                \r\n\r\n    def payload = \"Test Request\"\r\n\r\n    MQQueueManager\
                \ qMgr = null\r\n    MQQueue reqQ = null\r\n    MQQueue repQ = null\r\
                \n\r\n    try {\r\n\r\n        MQEnvironment.hostname = host\r\n \
                \       MQEnvironment.port = port\r\n        MQEnvironment.channel\
                \ = channel\r\n        MQEnvironment.properties.put(\r\n         \
                \   MQC.TRANSPORT_PROPERTY,\r\n            MQC.TRANSPORT_MQSERIES_CLIENT\r\
                \n        )\r\n\r\n        qMgr = new MQQueueManager(queueManagerName)\r\
                \n\r\n        // Open request queue\r\n        reqQ = qMgr.accessQueue(\r\
                \n            requestQueue,\r\n            MQC.MQOO_OUTPUT\r\n   \
                \     )\r\n\r\n        MQMessage requestMsg = new MQMessage()\r\n\r\
                \n        requestMsg.replyToQueueName = replyQueue\r\n        requestMsg.replyToQueueManagerName\
                \ = queueManagerName\r\n        requestMsg.messageId = MQC.MQMI_NONE\r\
                \n\r\n        requestMsg.writeString(payload)\r\n\r\n        MQPutMessageOptions\
                \ pmo = new MQPutMessageOptions()\r\n\r\n        reqQ.put(requestMsg,\
                \ pmo)\r\n\r\n        // Save generated MessageId\r\n        byte[]\
                \ requestMsgId = requestMsg.messageId\r\n\r\n        Application.showMessage(\"\
                Request sent\")\r\n        Application.showMessage(\"Reply Queue :\
                \ \" + replyQueue)\r\n        Application.showMessage(\"MsgId    \
                \   : \" + bytesToHex(requestMsgId))\r\n\r\n        // Open reply\
                \ queue for reading\r\n        repQ = qMgr.accessQueue(\r\n      \
                \      replyQueue,\r\n            MQC.MQOO_INPUT_AS_Q_DEF\r\n    \
                \    )\r\n\r\n        MQMessage responseMsg = new MQMessage()\r\n\r\
                \n        // Match response CorrelationId to request MessageId\r\n\
                \        responseMsg.correlationId = requestMsgId\r\n\r\n        MQGetMessageOptions\
                \ gmo = new MQGetMessageOptions()\r\n        gmo.options =\r\n   \
                \             MQC.MQGMO_WAIT |\r\n                MQC.MQGMO_FAIL_IF_QUIESCING\r\
                \n\r\n        gmo.waitInterval = 30000    // 30 seconds\r\n\r\n  \
                \      Application.showMessage(\"Waiting for reply...\")\r\n\r\n \
                \       repQ.get(responseMsg, gmo)\r\n\r\n        int len = responseMsg.getDataLength()\r\
                \n        String response = responseMsg.readStringOfByteLength(len)\r\
                \n\r\n        Application.showMessage(\"===================================\"\
                )\r\n        Application.showMessage(\"Response Received\")\r\n  \
                \      Application.showMessage(\"CorrelationId : \"\r\n          \
                \      + bytesToHex(responseMsg.correlationId))\r\n        Application.showMessage(\"\
                Payload       : \" + response)\r\n        Application.showMessage(\"\
                ===================================\")\r\n\r\n        return response\r\
                \n\r\n    } catch (MQException e)\r\n    \r\n     {\r\n     \r\n \
                \    \tApplication.showMessage(\"MQ Exception Occurred\")\r\n    \
                \    Application.showMessage(\"Completion Code : \" + e.completionCode)\r\
                \n        Application.showMessage(\"Reason Code : \" + e.reasonCode)\r\
                \n        Application.showMessage(\"Queue Manager : \" + queueManagerName)\r\
                \n        Application.showMessage(\"Request Queue : \" + requestQueue)\r\
                \n        Application.showMessage(\"Reply Queue : \" + replyQueue)\r\
                \n        throw e\r\n\r\n     } \r\n    finally {\r\n\r\n        if\
                \ (reqQ != null) {\r\n            reqQ.close()\r\n        }\r\n\r\n\
                \        if (repQ != null) {\r\n            repQ.close()\r\n     \
                \   }\r\n\r\n        if (qMgr != null) {\r\n            qMgr.disconnect()\r\
                \n        }\r\n    }\r\n}\r\n\r\ndef bytesToHex(byte[] bytes) {\r\n\
                \    StringBuilder sb = new StringBuilder()\r\n    for (byte b : bytes)\
                \ {\r\n        sb.append(String.format(\"%02X\", b))\r\n    }\r\n\
                \    return sb.toString()\r\n}"
        hasMethodId: true
        methodId:
          $type: ScriptMethodIdentifier
          functionName: sendMQRequest
    writeInput: true
    inputType: InputUsable
    input:
      use: 1
      text:
        text: ""
        type: text/plain
      dataSource:
        columnName: "New Datasource: response"
  - $type: ToolTest
    name: Extension Tool 4
    testID: 5
    tool:
      $type: MethodTool
      dataSourceNames:
      - New Datasource
      iconName: Method
      name: Extension Tool 4-CLUSTER via QM1
      outputProvider:
        outputTools:
        - $type: Edit
          allowToolbar: false
          iconName: Editor
          name: Edit
        - $type: GenericDataBank
          dataSourceNames:
          - New Datasource
          iconName: XMLDataBank
          name: JSON Data Bank
          wrappedTool:
            $type: XMLtoDataSource
            dataSourceNames:
            - New Datasource
            iconName: XMLDataBank
            name: XML Data Bank
            selectedXPaths:
            - elementOption: 1
              contentOption: 2
              XMLDataBank_ExtractXPath: /root
              target: 1
              mode: 1
            canonicalizeOutput: true
            xmlMessage: true
            virtualDSCreator:
              writableColumns:
              - dataSourceNames:
                - "New Datasource: response"
                mode: 2
                customName: "Test 3: root"
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
      method:
        hasCode: true
        code:
          $type: ScriptCode
          input:
            useText: true
            textInput:
              $type: ScriptingTextInput
              text: "import com.ibm.mq.*\r\nimport com.ibm.mq.constants.*\r\nimport\
                \ com.parasoft.api.*\r\n\r\ndef sendMQRequest() {\r\n\r\n    def queueManagerName\
                \ = \"QM1\"\r\n    def host = \"localhost\"\r\n    def port = 1414\r\
                \n    def channel = \"MY.CLIENT.CHANNEL\"\r\n\r\n    //def requestQueue\
                \ = \"TEST.QUEUE2\"\r\n    def requestQueue = \"CLUSTER.REQUEST.Q\"\
                \r\n    def replyQueue = \"TEST.REPLY.QONQM1\"\r\n\r\n    def payload\
                \ = \"Test Request\"\r\n\r\n    MQQueueManager qMgr = null\r\n   \
                \ MQQueue reqQ = null\r\n    MQQueue repQ = null\r\n\r\n    try {\r\
                \n\r\n        MQEnvironment.hostname = host\r\n        MQEnvironment.port\
                \ = port\r\n        MQEnvironment.channel = channel\r\n        MQEnvironment.properties.put(\r\
                \n            MQC.TRANSPORT_PROPERTY,\r\n            MQC.TRANSPORT_MQSERIES_CLIENT\r\
                \n        )\r\n\r\n        qMgr = new MQQueueManager(queueManagerName)\r\
                \n\r\n        // Open request queue\r\n        reqQ = qMgr.accessQueue(\r\
                \n            requestQueue,\r\n            MQC.MQOO_OUTPUT\r\n   \
                \     )\r\n\r\n        MQMessage requestMsg = new MQMessage()\r\n\r\
                \n        requestMsg.replyToQueueName = replyQueue\r\n        requestMsg.replyToQueueManagerName\
                \ = queueManagerName\r\n        requestMsg.messageId = MQC.MQMI_NONE\r\
                \n\r\n        requestMsg.writeString(payload)\r\n\r\n        MQPutMessageOptions\
                \ pmo = new MQPutMessageOptions()\r\n\r\n        reqQ.put(requestMsg,\
                \ pmo)\r\n\r\n        // Save generated MessageId\r\n        byte[]\
                \ requestMsgId = requestMsg.messageId\r\n\r\n        Application.showMessage(\"\
                Request sent\")\r\n        Application.showMessage(\"Reply Queue :\
                \ \" + replyQueue)\r\n        Application.showMessage(\"MsgId    \
                \   : \" + bytesToHex(requestMsgId))\r\n\r\n        // Open reply\
                \ queue for reading\r\n        repQ = qMgr.accessQueue(\r\n      \
                \      replyQueue,\r\n            MQC.MQOO_INPUT_AS_Q_DEF\r\n    \
                \    )\r\n\r\n        MQMessage responseMsg = new MQMessage()\r\n\r\
                \n        // Match response CorrelationId to request MessageId\r\n\
                \        responseMsg.correlationId = requestMsgId\r\n\r\n        MQGetMessageOptions\
                \ gmo = new MQGetMessageOptions()\r\n        gmo.options =\r\n   \
                \             MQC.MQGMO_WAIT |\r\n                MQC.MQGMO_FAIL_IF_QUIESCING\r\
                \n\r\n        gmo.waitInterval = 30000    // 30 seconds\r\n\r\n  \
                \      Application.showMessage(\"Waiting for reply...\")\r\n\r\n \
                \       repQ.get(responseMsg, gmo)\r\n\r\n        int len = responseMsg.getDataLength()\r\
                \n        String response = responseMsg.readStringOfByteLength(len)\r\
                \n\r\n        Application.showMessage(\"===================================\"\
                )\r\n        Application.showMessage(\"Response Received\")\r\n  \
                \      Application.showMessage(\"CorrelationId : \"\r\n          \
                \      + bytesToHex(responseMsg.correlationId))\r\n        Application.showMessage(\"\
                Payload       : \" + response)\r\n        Application.showMessage(\"\
                ===================================\")\r\n\r\n        return response\r\
                \n\r\n    } catch (MQException e) {\r\n\r\n        Application.showMessage(\r\
                \n            \"MQ Error: Reason Code=\"\r\n                    +\
                \ e.reasonCode\r\n                    + \", CompCode=\"\r\n      \
                \              + e.completionCode)\r\n\r\n        throw e\r\n\r\n\
                \    } finally {\r\n\r\n        if (reqQ != null) {\r\n          \
                \  reqQ.close()\r\n        }\r\n\r\n        if (repQ != null) {\r\n\
                \            repQ.close()\r\n        }\r\n\r\n        if (qMgr !=\
                \ null) {\r\n            qMgr.disconnect()\r\n        }\r\n    }\r\
                \n}\r\n\r\ndef bytesToHex(byte[] bytes) {\r\n    StringBuilder sb\
                \ = new StringBuilder()\r\n    for (byte b : bytes) {\r\n        sb.append(String.format(\"\
                %02X\", b))\r\n    }\r\n    return sb.toString()\r\n}"
        hasMethodId: true
        methodId:
          $type: ScriptMethodIdentifier
          functionName: sendMQRequest
    writeInput: true
    inputType: InputUsable
    input:
      use: 1
      text:
        text: ""
        type: text/plain
      dataSource:
        columnName: response
