import { codeState, signal } from '../../stores/codeStore.js'
import './optiontags/optnfunc.tag'
import './optiontags/optnvar.tag'
import './optiontags/optnarrw.tag'
import './optiontags/optnnum.tag'
import './optiontags/optntext.tag'
import './optiontags/optncomm.tag'
import './optiontags/optnop.tag'
import './optiontags/optnloop.tag'
import './optiontags/optnif.tag'
import './optiontags/optnpin.tag'



<optionkit>


  <optnvar if={ group == 'var' }></optnvar>
  <optnfunc if={ group == 'function' }></optnfunc>
  <optnarrw if={ group == 'arrow' }></optnarrw>
  <optnnum if={ group == 'number' }></optnnum>
  <optntext if={ group == 'text' }></optntext>
  <optncomm if={ group == 'comment' }></optncomm>
  <optnop if={ group == 'operator' }></optnop>
  <optnloop if={ group == 'loop' }></optnloop>
  <optnif if={ group == 'if' }></optnif>
  <optnpin if={ group == 'pin' }></optnpin>


  <script>

    this.on('update', () => {
      this.group = codeState.lines[ codeState.cursor.y ].tokens[ codeState.cursor.x ].group
    })

    signal.on( 'updateCursor', () => {
      this.update()
    })

  </script>


  <style scoped>
    :scope {
      height: 20%;
      display: block;
      background: #151821;
      border: .4vh solid #1d2233;
      position: relative;
    }
  </style>


</optionkit>
