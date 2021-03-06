import { codeState, codeUtil } from '../../../stores/codeStore.js'
import { toolbarSignal } from '../../../stores/toolbarStore.js'
import './varlistitem.tag'



<varkitlocal>


  <div id="vklc">Local</div>
  <div id="vkllist">
    <varlistitem each={ vars }></varlistitem>
  </div>


  <script>
    this.vars = []
    var tag = this
    toolbarSignal.on('varkitVisible', () => {
      var id = codeUtil.cursorToken().id
      if ( id >= 3 && id <= 6 )
        tag.vars = codeState.vars[id]
      else
        tag.vars = []
      this.update()
    })

  </script>


  <style scoped>
    :scope {
      position: absolute;
      display: block;
      top: 17vw;
      right: .5vw;
      width: 36vw;
      bottom: .5vw;
      background-color: #1d212d;
      overflow: auto;
    }
    #vklc {
      position: absolute;
      left: 1vw;
      top: .5vw;
    }
    #vkllist {
      position: absolute;
      left: 1vw;
      top: 3vw;
      width: 30vw;
      display: flex;
      flex-wrap: wrap;
    }

  </style>


</varkitlocal>
