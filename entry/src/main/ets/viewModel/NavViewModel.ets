import { Nav } from '../entity/Nav'
import { NavModel } from '../model/NavModel'

@Observed
export class NavViewModel {
  navs: Array<Nav>

  constructor(cardModel: NavModel) {
    this.navs = cardModel.getAllNav()
  }
}