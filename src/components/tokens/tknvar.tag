import { codeInfo } from '../../stores/codeInfo.js'



<tknvar>


  <div id="tt0" if={ ! options.tx2 }>{ options.tx1 }</div>
  <div id="tt1" if={ options.tx2 }>{ options.tx1 }</div>
  <div id="tt2" if={ options.tx2 }>{ options.tx2 }</div>

  <div id="bk"></div>

  <div class="varbubble" if={ options.bubble }></div>


  <script>

    this.on("update", () => {
      this.bk.style.backgroundPosition = codeInfo[ this.id ].loc.x + 'px ' + codeInfo[ this.id ].loc.y + 'px'
    })

  </script>


  <style scoped>
    :scope {
      width: 56px;
      height: 56px;
      display: block;
      position: absolute;
    }
    #bk {
      width: 56px;
      height: 56px;
      display: block;
      background-image: url('assets/img/tk90.svg');
      background-size: 560px 560px;
      z-index: 10;
      position: absolute;
    }
    #tt0 {
      width: 56px;
      text-align: center;
      position: absolute;
      top: 10px;
      margin: 0;
      z-index: 10;
    }
    #tt1 {
      position: absolute;
      top: 2px;
      width: 56px;
      text-align: center;
      margin: 0;
      z-index: 10;
    }
    #tt2 {
      position: absolute;
      width: 56px;
      text-align: center;
      top: 12px;
      margin: 0;
      z-index: 10;
    }
    .varbubble {
      position: absolute;
      left: -5px;
      top: -5px;
      width: 66px;
      height: 66px;
      z-index: 4;
      background:  url('assets/img/varbubble.svg');
      background-size: 66px 66px;
    }
  </style>


</tknvar>
