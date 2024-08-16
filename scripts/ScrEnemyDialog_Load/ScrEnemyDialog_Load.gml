function ScrEnemyDialog_Load(LANGUAGE){
	for (var i = 1; i < 4; i++){
		for (var ii = 0; ii < 13; ii++){
			global.Text_Menu[i, ii] = "Text";
		}
	}

	//switch (os_get_language()){
	switch (LANGUAGE){
		default:
		case "en":
			//Phase1
			global.Text_Menu[1, 0] = "* You got lost.";
			global.Text_Menu[1, 1] = "* You will realized the fellness&  of reality.";
			global.Text_Menu[1, 2] = "* The stars fall with them and&  are lost into space.";
			global.Text_Menu[1, 3] = "* 1 left...?&{sleep 30}* After that...";
			global.Text_Menu[1, 4] = "* Maybe the \"cool\" guy&  is here.";
			global.Text_Menu[1, 5] = "* Seem like dust.{sleep 30}&* They are flying in the sky.";
			global.Text_Menu[1, 6] = "* The breath of death is slowly&  approaching.";
			global.Text_Menu[1, 7] = "* Flames and bullets.";
			global.Text_Menu[1, 8] = "* Knife flickered in the darkness.";
			global.Text_Menu[1, 9] = "* Smells like rubble and steel.";
			//global.Text_Menu[1, 10] = "* LOVE and love.{speed -1}XXXXXXX&  XXXXXX XXXXXX XXXXXXX&  XXXXXX XXXXXX XXXXXXX";
			global.Text_Menu[1, 10] = "{speed -1}{repeat `frame` 6}{repeat `voice` 6}{char_y -3}11100110 10010101 {char_y 1}100100{char_y 0}01&11100110 {char_y -1}10010101 10010001&11100110 10001000 10010001 11100011&10000000 10000010 11100011&10000000 10000010&11100011 10000000 10000010 00000000&  00000000 00000000 00000000 00000000";
		
			//Act
			global.Text_Menu_Info[0, 0] = "* Check";
			global.Text_Menu_Info[0, 1] = "* Ink! sans ATK ? DEF ?{sleep 40}&* Protector of imagination and&  all AUs.";
			
			//Item
			global.Text_Menu_Info[1, 0] = "Butterscotch Pie";
			global.Text_Menu_Info[1, 1] = "Legendary Hero";
			global.Text_Menu_Info[1, 2] = "Face Steak";
			global.Text_Menu_Info[1, 3] = "Snowman Piece";
			global.Text_Menu_Info[1, 4] = "Instant Noodles";
			
			//Mercy
			global.Text_Menu_Info[2, 0] = "* Spare";
			global.Text_Menu_Info[2, 1] = "* Flee";
			
			global.Text_Enemy[1, 0] = "Finally, here we are{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 1) + "I will kill you{sleep 30}&" + ScrEmoji(ENEMY_EMOJI.FACE, 2) + "Prepare for your death";
			global.Text_Enemy[1, 1] = ScrEmoji(ENEMY_EMOJI.FACE, 1) + "...{pause}{clear}They were really brutal{sleep 30}&" + ScrEmoji(ENEMY_EMOJI.FACE, 3) + "But not like you";
			global.Text_Enemy[1, 2] = ScrEmoji(ENEMY_EMOJI.FACE, 1) + "{sleep 5}" + ScrEmoji(ENEMY_EMOJI.FACE, 4) + "Nothing can match&the beauty of the stars";
			global.Text_Enemy[1, 3] = ScrEmoji(ENEMY_EMOJI.FACE, 1) + "We" + ScrEmoji(ENEMY_EMOJI.FACE, 5) + " are Never Forget him.{sleep 30}&After that...{pause}{clear}or maybe he wasn't&forgotten after all";
			global.Text_Enemy[1, 4] = ScrEmoji(ENEMY_EMOJI.FACE, 1) + "We" + ScrEmoji(ENEMY_EMOJI.FACE, 6) + " inevitably&encounter enemies,&{sleep 20}but why don't we&try to forgive them?";
			global.Text_Enemy[1, 5] = ScrEmoji(ENEMY_EMOJI.FACE, 1) + "The " + ScrEmoji(ENEMY_EMOJI.FACE, 7) + "same encounters,{sleep 30}&the same experiences,{sleep 30}&thousands of them{pause}{clear}Not only did he not&change anything,&but also made himself&very cruelty";
			global.Text_Enemy[1, 6] = "When he came to you&with the scythe, {pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 1) + "you took the knife&and changed your fate{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 8) + "......&{sleep 30}The courage to&face fears";
			global.Text_Enemy[1, 7] = "They come from&different latitudes,&{sleep 30}and even if you haven't&seen them before,{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 9) + "you can still guess their&intention to came here";
			global.Text_Enemy[1, 8] = ScrEmoji(ENEMY_EMOJI.FACE, 1) + "Even at the cost&of eliminating the&obstacles in the way&of the immediate, {pause}{clear}but did not take&into account the changes&in the timeline{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 10) + "You miscalculated";
			global.Text_Enemy[1, 9] = "He may have been born&to stop you{pause}{clear}Can distort space and&shuttle through&parallel universes.{pause}{clear}Ha&{sleep 10}the power...";
			//global.Text_Enemy[1, 10] = "LOVE and love&{sleep 30}They have great goal{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 1) + "THE TIMELINE CREATOR&and&"+ ScrEmoji(ENEMY_EMOJI.FACE, 12) + "\".OVXRWRXXXX.\"";
			global.Text_Enemy[1, 10] = ScrEmoji(ENEMY_EMOJI.FACE, 13) + "{speed -1}{repeat `frame` 6}{repeat `voice` 6}{char_y -3}11100110 10010101 {char_y 1}100100{char_y 0}01&11100110 {char_y -1}10010101 10010001&11100110 10001000 10010001 11100011&10000000 10000010 11100011&10000000 10000010&11100011 10000000 10000010 00000000&  00000000 00000000 00000000 00000000{end}";
			//5 prefer to "IN_TURN_ENEMY_DIALOG"
			global.Text_Enemy[5, 2] = ScrEmoji(ENEMY_EMOJI.FACE, 1) + "{font 3}{voice 2}In the end&{sleep 20}Stars was fell&into the earth{pause}{clear}It symbolizes he&got fallen...&{sleep 20}and you..."; 
			//global.Text_Enemy[1, 5] = ;
			//Phase2
			global.Text_Menu[2, 0] = "* You got lost.{sleep 40}&* Again.";
			global.Text_Enemy[2, 0] = "";
			
			//Phase3 prepare
			global.Text_Enemy[3, 0] = ScrEmoji(ENEMY_EMOJI.FACE, 1) + "{skippable false}Heh heh heh,{sleep 30}&you are still here,{sleep 30}&" + ScrEmoji(ENEMY_EMOJI.FACE, 34) + "again and again.{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 1) + "{sleep 5}" + ScrEmoji(ENEMY_EMOJI.FACE, 35) + "There's nothing you can&do about it.{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 1) + "{sleep 10}" + ScrEmoji(ENEMY_EMOJI.FACE, 36) + "What is it that keeps&you standing here.{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 1) + "{sleep 10}" + ScrEmoji(ENEMY_EMOJI.FACE, 37) + "What is it{speed 5}...&{speed 3}Why are you{speed 5}...{speed 3}{sleep 30}{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 39) + "{sleep 20}" + ScrEmoji(ENEMY_EMOJI.FACE, 40) + "Well, I will..." + ScrEmoji(ENEMY_EMOJI.FACE, 41) + "{sleep 20}" + ScrEmoji(ENEMY_EMOJI.FACE, 42) + "{sleep 20}" + ScrEmoji(ENEMY_EMOJI.FACE, 43) + "{end}";
			break;
		case "zh":
			//Phase1
			global.Text_Menu[1, 0] = "{font 5}* 你迷失了.";
			global.Text_Menu[1, 1] = "{font 5}* 你将会见识到真正的残暴.";
			global.Text_Menu[1, 2] = "{font 5}* 繁星随着它们坠入无尽的宇宙.";
			global.Text_Menu[1, 3] = "{font 5}* 还剩一个...?&{sleep 30}* 在那之后...";
			global.Text_Menu[1, 4] = "{font 5}* 那个\"酷\"家伙也许在这里.";
			global.Text_Menu[1, 5] = "{font 5}* 看起来像尘埃.{sleep 30}&* 它们飘散在天际中.";
			global.Text_Menu[1, 6] = "{font 5}* 死亡的气息稍稍逼近.";
			global.Text_Menu[1, 7] = "{font 5}* 飞扬的子弹和火焰.";
			global.Text_Menu[1, 8] = "{font 5}* 在黑暗中隐约闪烁着刀光.";
			global.Text_Menu[1, 9] = "{font 5}* 刺骨的凄凉阵阵传来.";
			global.Text_Menu[1, 10] = "{font 5}* 闻起来像钢筋和瓦砾.";
			
			//Act
			global.Text_Menu_Info[0, 0] = "{font 5}* 查看";
			global.Text_Menu_Info[0, 1] = "{font 5}* Ink! sans ATK ? DEF ?{sleep 40}&* 所有想象与同人的守护者.";
			
			//Item
			global.Text_Menu_Info[1, 0] = "{font 5}";
			
			//Mercy
			global.Text_Menu_Info[2, 0] = "{font 5}* 饶恕";
			global.Text_Menu_Info[2, 1] = "{font 5}* 逃跑";
		
			global.Text_Enemy[1, 0] = "终于，我们来到了这里.{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 1) + "我会杀了你.{sleep 30}&" + ScrEmoji(ENEMY_EMOJI.FACE, 2) + "为迎接你的死亡所做好准备.";
			global.Text_Enemy[1, 1] = ScrEmoji(ENEMY_EMOJI.FACE, 1) + "...{pause}{clear}它们也许真的很残暴.{sleep 30}&" + ScrEmoji(ENEMY_EMOJI.FACE, 3) + "但不是像你一样冷酷无情.";
			global.Text_Enemy[1, 2] = ScrEmoji(ENEMY_EMOJI.FACE, 1) + "{sleep 5}" + ScrEmoji(ENEMY_EMOJI.FACE, 4) + "没有什么能够比得上&这片美丽的星空.";
			global.Text_Enemy[1, 3] = ScrEmoji(ENEMY_EMOJI.FACE, 1) + "我们" + ScrEmoji(ENEMY_EMOJI.FACE, 5) + "永远不会忘记他.{sleep 30}&在那之后...{pause}{clear}或许他从来没有被遗忘.";
			global.Text_Enemy[1, 4] = ScrEmoji(ENEMY_EMOJI.FACE, 1) + "我们" + ScrEmoji(ENEMY_EMOJI.FACE, 6) + "难免会遇到敌人，&{sleep 20}但是我们为什么&不试着去饶恕他呢？";
			global.Text_Enemy[1, 5] = "他于世上被重复着&如恶魔般的经历，&{sleep 10}千千万万轮回{pause}{clear}他不仅没有改变一切，&{sleep 10}而且将自己置身于千丈深渊。";
			global.Text_Enemy[1, 6] = "当他带着镰刀向你走来时，{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 1) + "你手持着刀刃改变了&你的命运.{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 8) + "......&{sleep 30}那直面恐惧的勇气.";
			global.Text_Enemy[1, 7] = "他们来自不同的维度，&{sleep 30}即使你没有见到过他们，{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 9) + "你也可以猜到&他们为什么来到这里。";
			//5 prefer to "IN_TURN_ENEMY_DIALOG"
			global.Text_Enemy[5, 2] = ScrEmoji(ENEMY_EMOJI.FACE, 1) + "{font 3}{voice 2}最终.&{sleep 20}繁星殒落至世间.{pause}{clear}象征了他的堕落...&{sleep 20}和你..."; 
			
			//Phase2
			global.Text_Menu[2, 0] = "{font 5}* 你迷失了.{sleep 30}&* 又一次.";
			
			global.Text_Enemy[3, 0] = ScrEmoji(ENEMY_EMOJI.FACE, 1) + "{skippable false}呵呵呵，{sleep 30}&你还在这里啊，{sleep 30}&" + ScrEmoji(ENEMY_EMOJI.FACE, 34) + "一次又一次。{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 1) + "{sleep 5}" + ScrEmoji(ENEMY_EMOJI.FACE, 35) + "这里空无一有，&你也对此无能为力。{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 1) + "{sleep 10}" + ScrEmoji(ENEMY_EMOJI.FACE, 36) + "是什么东西能够&让你坚持下来啊。。。{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 1) + "{sleep 10}" + ScrEmoji(ENEMY_EMOJI.FACE, 37) + "到底是什么{speed 5}...&{speed 3}你为什么...{speed 5}...{speed 3}{sleep 30}{pause}{clear}" + ScrEmoji(ENEMY_EMOJI.FACE, 39) + "{sleep 20}" + ScrEmoji(ENEMY_EMOJI.FACE, 40) + "好，好，我会..." + ScrEmoji(ENEMY_EMOJI.FACE, 41) + "{sleep 20}" + ScrEmoji(ENEMY_EMOJI.FACE, 42) + "{sleep 20}" + ScrEmoji(ENEMY_EMOJI.FACE, 43) + "{end}";
			
			break;
	}
	return;
}