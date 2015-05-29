package ru.kutu.grindplayer.views.components
{
	import ru.kutu.grind.views.api.IAlternateMenuButton;
	import ru.kutu.grind.vos.SelectorVO;

	public class AlternateMenuButton extends ControlBarMenuButton implements IAlternateMenuButton
	{

		override public function setSelectors(list:Vector.<SelectorVO>):void
		{
			super.setSelectors(list);
			if (this.list && this.list.dataProvider && this.list.dataProvider.length <= 1)
			{
				openButton.visible = false;
			}
		}
	}

}
