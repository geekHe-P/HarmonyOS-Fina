@Observed
export class Nav {
  /*
   * 选择时的图片
   * */
  selectImage: Resource
  /*
   * 没有被选择时的图片显示
   * */
  normalImage: Resource
  /*
   * 是否被选择
   * */
  isSelect?: boolean
  /*
   * 是否是扫码
   * */
  qrCode?: boolean
  /*
   * 对应的脚标
   * */
  index?: number
  /*
   * y坐标调整
   * */
  y?: number
  /*
   * 构造函数赋值
   * */
  constructor(selectImage: Resource,
              normalImage: Resource,
              qrCode: boolean = false,
              y: number = 0) {
    this.selectImage = selectImage
    this.normalImage = normalImage
    this.qrCode = qrCode
    this.y = y
  }

}

