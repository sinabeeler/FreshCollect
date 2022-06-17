## FreshCollect

FreshCollect is a mobile web app developed by three Le Wagon students as their final Project. Check out the result here: [FreshCollect](http://www.fresh-collect.xyz). Sign up and let's go! 
<br>

###### Description 
FreshCollect is a mobile web app with the goal of minimizing food waste by allowing its users to share their leftover groceries at home with their neighborhood. Users can either browse their neighborhood on a live map for available items or simply share leftover produce from their homes in just a few steps. Both sharer and collector of items will be notified via push notification as soon as there is a change in their item of interest.
<br>

## Team members
[Fiona Feichtinger](https://github.com/Fiona2202), [Sina Beeler](https://github.com/sinabeeler) and [Alexander Wu](https://github.com/wu-alexander)
<br>

## User stories and actions
<p align="center">
<img width="1055" alt="user_stories_actions" src="https://user-images.githubusercontent.com/100839308/173718955-eaf7084d-14ec-40a3-94d4-2c03ddf50363.png">
</p>
<br>

## DB schema
<p align="center">
<img width="597" alt="db_schema" src="https://user-images.githubusercontent.com/100839308/173716285-71fb7985-f189-4c85-bd61-c4f50358d187.png">
</p>
<br>

## Coding highlights!
- Push notifications with [noticed](https://github.com/excid3/noticed) and [ActionCable](https://github.com/excid3/noticed/blob/master/docs/delivery_methods/action_cable.md ) delivery method to push them directly on the browser
- Image upload with an external Rails service [Cloudinary](https://cloudinary.com/documentation/rails_integration)
- Using [Mapbox API ](https://docs.mapbox.com/api/search/geocoding/) for Geocoding
- Add [canvas-confetti ](https://www.npmjs.com/package/canvas-confetti) effect with JavaScript:

```
import * as confetti from 'canvas-confetti'
import { Controller } from "stimulus"

export default class extends Controller {
  connect() {
    var myConfetti = confetti.create(this.element, {
      resize: true,
      useWorker: true
    });
    myConfetti({
      particleCount: 200,
      spread: 160,
      colors: ["#D76834", "#E08E44", "#74896D"]
    });
  }
  hide() {
    this.element.remove()
  }
}
```
<br>


## Some design impressions

- Design mockups on [Figma](https://www.figma.com/file/z9cEZ2saIKWdeEfKP1vfE4/Untitled?node-id=4%3A46)

<p align="center">
<img width="200" height="350" alt="screenshot_home" src="https://user-images.githubusercontent.com/100839308/173715135-62635484-3ec3-488c-a455-0607c1abb2c1.png">
<img width="200" height="350" alt="teaser_home" src="https://user-images.githubusercontent.com/100839308/173715540-7841cc14-7b71-477e-99e0-36fc7776d5cc.png">
<img width="200" height="350" alt="screenshot_index" src="https://user-images.githubusercontent.com/100839308/173715138-9e47b0b5-0088-427b-8218-9b288767e003.png">
</p>

<br><br>
Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
