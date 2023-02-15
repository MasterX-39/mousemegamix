package;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.tweens.FlxTween;
#if MODS_ALLOWED
import sys.FileSystem;
#end
import lime.utils.Assets;

using StringTools;

class CreditsState extends MusicBeatState
{
	var curSelected:Int = 1;

	private var grpOptions:FlxTypedGroup<Alphabet>;
	private var iconArray:Array<AttachedSprite> = [];
	private var creditsStuff:Array<Dynamic> = [];

	var bg:FlxSprite;
	var descText:FlxText;
	var intendedColor:Int;
	var colorTween:FlxTween;

	override function create()
	{
		#if desktop
		// Updating Discord Rich Presence
		DiscordClient.changePresence("In the Menus", null);
		#end

		bg = new FlxSprite().loadGraphic(Paths.image('menuDesat'));
		add(bg);

		grpOptions = new FlxTypedGroup<Alphabet>();
		add(grpOptions);

		var pisspoop = [ //Name - Icon name - Description - Link - BG Color
		    ['Port and Recreation lol'],
			['MarioMaster',		    'mariomaster',		    'Port and Rework stuff',	 'https://www.youtube.com/c/MarioMaster1997',	'0xFFD10616'],
			['Psych Engine Android Port'],
			['M.A. Jigsaw',		    'majigsaw',		    'Main Coder of The Port',	 'https://www.youtube.com/channel/UC2Sk7vtPzOvbVzdVTWrribQ',	'0xFFC30085'],
			[''],
			['SNS TEAM'],
			['MayMays4Days',		'maymays4days',		'Coder and Composer/N.Happy/Better/Corru.Mouse',					'https://www.tiktok.com/@maymays4days?lang=en',	'0xFF00FF72'],
			['SonicBoiForLife',			'sonicboiforlife',		'Asset Provider and Cutscene Animator',				'https://www.tiktok.com/@sonicboiforlife?lang=en',		'0xFFFFD900'],
			[''],
			['SNS-The Final Team'],
			['GhostlyDev',		'andre',		'Programer/Maked some art/Animator',					'https://gamebanana.com/members/1775744',	'0xFF080700'],
			['Alaira',			'alaira',		'Artist',				'https://c.tenor.com/hBRDSmlRN2MAAAAd/echo.gif',		'0xFFFFF6F6'],
			['Adriozer',			'adriozer',		'Musician/Composer',				'https://www.youtube.com/channel/UCoxNca_i1a6d7jB48fsRhNQ',		'0xFFB31DE6'],
			['Blasterkc8',			'blaster',		'Musician/Composer',				'https://www.youtube.com/channel/UCLNSLGHF36ChhJEXZFE2r2w',		'0xFF249FDE'],
			['Jcruzg',			'jcruzg',		'Faceless BG/Artist',				'https://i.gifer.com/CuEE.gif',		'0xFFC9C9C9'],
			[''],
			['SNS NEO 3.0 STYLE'],
			['bon bon 139',		'happymouse-neo',		'Background/Reskin/Icon/Chart',					'https://gamebanana.com/members/1734725',	'0xFFB31DE6'],
			['Zaobro4959',			'happymouse-neo',		'Base S.Mouse Reskin',				'https://gamebanana.com/members/1696876',		'0xFFB31DE6'],
			['Hapdoin',			'happymouse-neo',		'S.Mouse Neo Style',				'https://gamebanana.com/members/2009737',		'0xFFB31DE6'],
			['TNateHundred',			'happymouse-neo',		'Base S.Mouse Really Happy Reskin/icon',				'https://gamebanana.com/members/1902100',		'0xFFB31DE6'],
			['AhmedxRNMD',			'happymouse-neo',		'Unhappy Remix',				'https://youtu.be/8dx5CpClNZE',		'0xFFB31DE6'],
			['DCLC',			'happymouse-neo',		'Really Happy Remix',				'https://youtu.be/yOb6T8g1syM',		'0xFFB31DE6'],
			['Yumekaitaku',			'happymouse-neo',		'Smile Remix',				'https://youtu.be/DPPgioP6Xck',		'0xFFB31DE6'],
			['FNACodys',			'happymouse-neo',		'OG Neo Happy Chart',				'https://gamebanana.com/members/1777262',		'0xFFB31DE6'],
			['Lean',			'happymouse-neo',		'Happy Remix',				'https://www.youtube.com/watch?v=c-o9Im7AxIs&t=0s',		'0xFFB31DE6'],
			[''],
			['SNS SOFT TEAM'],
			['Adrielinz',		'adrielinz',		'Charter',					'https://gamejolt.com/@adrielinz',	'0xFFFF0A41'],
			['Daralynarts',			'daralynarts',		'Programmer and Artist',				'https://twitter.com/daralynarts',		'0xFF492A4C'],
			[''],
			['Mickey Mouse Corrupted'],
			['AzSalmaniyeh',		'corruptedmickey',		'Creator',					'https://www.youtube.com/watch?v=MKJ0eheWq5s',	'0xFFCB0000'],
			[''],
			['Box Funkin'],
			['Jhaix',		'jhaix',		'Director & Creator of the mod, musician. Charter of Unknown\nSuffering.',					'https://twitter.com/Jhaix3',	'0xFFE2D4CE'],
			['Cape',		'Cape',		'Co Director of the mod, coder. Charter of Wistfulness &\nDejection.',					'https://twitter.com/capeletin1',	'0xFF242846'],
			['Zero Animation',		'piola',		'Animator and artist of the mod.',					'https://twitter.com/zero_artist02',	'0xFF003333'],
			['ZetaE',		'zetas',		'Background Artist.',					'https://twitter.com/ZetaE18',	'0xFFCCCCCC'],
			['Nugget',		'nuggets',		'Logo Artist and extras.',					'https://twitter.com/NuggetNightmare',	'0xFF6E034B'],
			['Jloor',		'jloor',		'Code Help.',					'https://twitter.com/GamerJloor',	'0xFFFFECE5'],
			['KINGFOX',		'fox',		'Voice Actor.',					'https://twitter.com/VOKINGF0X',	'0xFF8F040B'],
			[''],
			['FNF SOFT'],
			['Tamacoochi',		'tamacoochi',		'Soft AU.',					'https://gamebanana.com/mods/312803',	'0xFFBF89B7'],
			['SOFT TEAM',		'softteam',		'Soft Mod Assets.',					'https://gamebanana.com/mods/312803',	'0xFFBF89B7'],
			[''],
			['FNF NEO'],
			['NEO TEAM',		'bf-neo',		'Neo Mod Assets.',					'https://gamebanana.com/mods/44230',	'0xFF6FBC81'],
			[''],
			['Vs Oswald'],
			['Vs Oswald Team',		'oswald',		'FNF Oswald and Voice.',					'https://gamebanana.com/mods/330889',	'0xFF0094FF'],
			[''],
			['Miku Mod'],
			['Miku Mod team',		'miku',		'FNF Miku and Voice.',					'https://gamebanana.com/mods/44307',	'0xFF00ACC1'],
		    [''],
			['Craziness Injection'],
			['Sergierix',		'mouse-ci',		'Project Lead, Music & Charting.',					'https://gamebanana.com/members/1945237',	'0xFF6E034B'],
			['SlumberDev',		'mouse-ci',		'Artist.',					'https://gamebanana.com/members/1974522',	'0xFF6E034B'],
			['HerbieTendo',		'mouse-ci',		'Artist.',					'https://gamebanana.com/mods/343887',	'0xFF6E034B'],
			['Daralynarts',		'mouse-ci',		'Artist.',					'https://gamebanana.com/members/1819620',	'0xFF6E034B'],
			['Spider Thiago',		'mouse-ci',		'Cool guy + Guest charter.',					'https://gamebanana.com/members/1768165',	'0xFF6E034B'],
			['Dragon Rex',		'mouse-ci',		'Background.',					'https://gamebanana.com/members/1768165',	'0xFF6E034B'],
			['zPablo',		'mouse-ci',		'Support + Some coding.',					'https://gamebanana.com/members/1782359',	'0xFF6E034B'],
			[''],
			['Vs Mouse'],
			['Novatos Team',		'vsmouse',		'Vs Mouse Creators.',					'https://gamebanana.com/members/2018739',	'0xFFD10616'],
			[''],
			['Cognitive Crisis'],
			['GavinTheCartoonist',		'crisis',		'Main Animator and Director.',					'https://gamebanana.com/members/1766159',	'0xFF6E034B'],
			['DIVISION',		'crisis',		'Main Musician.',					'https://gamebanana.com/members/1998953',	'0xFF6E034B'],
			['blake-whattsup',		'crisis',		'Charter.',					'https://gamebanana.com/members/1833029',	'0xFF6E034B'],
			['ChillTeensie',		'crisis',		'Coder.',					'https://gamebanana.com/members/1840153',	'0xFF6E034B'],
			['toadfunny',		'crisis',		'Playtester and funny guy.',					'https://gamebanana.com/members/2110571',	'0xFF6E034B'],
			[''],
			['Covers for Cover Week'],
			['MasterX',		'masterx',		'Miku, Missa, Mario covers.',					'https://youtube.com/channel/UCSQfd55uK2ovMshzb5QPZQA',	'0xFF00ACC1'],
			[''],
			['Psych Engine Team'],
			['Shadow Mario',		'shadowmario',		'Main Programmer of Psych Engine',					'https://twitter.com/Shadow_Mario_',	'0xFFFFDD33'],
			['RiverOaken',			'riveroaken',		'Main Artist/Animator of Psych Engine',				'https://twitter.com/river_oaken',		'0xFFC30085'],
			[''],
			['Engine Contributors'],
			['shubs',				'shubs',			'New Input System Programmer',						'https://twitter.com/yoshubs',			'0xFF4494E6'],
			['PolybiusProxy',		'polybiusproxy',	'.MP4 Video Loader Extension',						'https://twitter.com/polybiusproxy',	'0xFFE01F32'],
			['gedehari',			'gedehari',			'Chart Editor\'s Sound Waveform base',				'https://twitter.com/gedehari',			'0xFFFF9300'],
			['Keoiki',				'keoiki',			'Note Splash Animations',							'https://twitter.com/Keoiki_',			'0xFFFFFFFF'],
			['SandPlanet',			'sandplanet',		'Mascot\'s Owner\nMain Supporter of the Engine',		'https://twitter.com/SandPlanetNG',	'0xFFD10616'],
			['bubba',				'bubba',		'Guest Composer for "Hot Dilf"',	'https://www.youtube.com/channel/UCxQTnLmv0OAS63yzk9pVfaw',	'0xFF61536A'],
			[''],
			["Funkin' Crew"],
			['ninjamuffin99',		'ninjamuffin99',	"Programmer of Friday Night Funkin'",				'https://twitter.com/ninja_muffin99',	'0xFFF73838'],
			['PhantomArcade',		'phantomarcade',	"Animator of Friday Night Funkin'",					'https://twitter.com/PhantomArcade3K',	'0xFFFFBB1B'],
			['evilsk8r',			'evilsk8r',			"Artist of Friday Night Funkin'",					'https://twitter.com/evilsk8r',			'0xFF53E52C'],
			['kawaisprite',			'kawaisprite',		"Composer of Friday Night Funkin'",					'https://twitter.com/kawaisprite',		'0xFF6475F3']
		];
		
		for(i in pisspoop){
			creditsStuff.push(i);
		}
	
		for (i in 0...creditsStuff.length)
		{
			var isSelectable:Bool = !unselectableCheck(i);
			var optionText:Alphabet = new Alphabet(0, 70 * i, creditsStuff[i][0], !isSelectable, false);
			optionText.isMenuItem = true;
			optionText.screenCenter(X);
			if(isSelectable) {
				optionText.x -= 70;
			}
			optionText.forceX = optionText.x;
			//optionText.yMult = 90;
			optionText.targetY = i;
			grpOptions.add(optionText);

			if(isSelectable) {
				var icon:AttachedSprite = new AttachedSprite('credits/' + creditsStuff[i][1]);
				icon.xAdd = optionText.width + 10;
				icon.sprTracker = optionText;
	
				// using a FlxGroup is too much fuss!
				iconArray.push(icon);
				add(icon);
			}
		}

		descText = new FlxText(50, 600, 1180, "", 32);
		descText.setFormat(Paths.font("vcr.ttf"), 32, FlxColor.WHITE, CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		descText.scrollFactor.set();
		descText.borderSize = 2.4;
		add(descText);

		bg.color = Std.parseInt(creditsStuff[curSelected][4]);
		intendedColor = bg.color;
		changeSelection();

		#if mobileC
		addVirtualPad(UP_DOWN, A_B);
		#end

		super.create();
	}

	override function update(elapsed:Float)
	{
		if (FlxG.sound.music.volume < 0.7)
		{
			FlxG.sound.music.volume += 0.5 * FlxG.elapsed;
		}

		var upP = controls.UI_UP_P;
		var downP = controls.UI_DOWN_P;

		if (upP)
		{
			changeSelection(-1);
		}
		if (downP)
		{
			changeSelection(1);
		}

		if (controls.BACK)
		{
			if(colorTween != null) {
				colorTween.cancel();
			}
			FlxG.sound.play(Paths.sound('cancelMenu'));
			MusicBeatState.switchState(new MainMenuState());
		}
		if(controls.ACCEPT) {
			CoolUtil.browserLoad(creditsStuff[curSelected][3]);
		}
		super.update(elapsed);
	}

	function changeSelection(change:Int = 0)
	{
		FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);
		do {
			curSelected += change;
			if (curSelected < 0)
				curSelected = creditsStuff.length - 1;
			if (curSelected >= creditsStuff.length)
				curSelected = 0;
		} while(unselectableCheck(curSelected));

		var newColor:Int =  Std.parseInt(creditsStuff[curSelected][4]);
		if(newColor != intendedColor) {
			if(colorTween != null) {
				colorTween.cancel();
			}
			intendedColor = newColor;
			colorTween = FlxTween.color(bg, 1, bg.color, intendedColor, {
				onComplete: function(twn:FlxTween) {
					colorTween = null;
				}
			});
		}

		var bullShit:Int = 0;

		for (item in grpOptions.members)
		{
			item.targetY = bullShit - curSelected;
			bullShit++;

			if(!unselectableCheck(bullShit-1)) {
				item.alpha = 0.6;
				if (item.targetY == 0) {
					item.alpha = 1;
				}
			}
		}
		descText.text = creditsStuff[curSelected][2];
	}

	private function unselectableCheck(num:Int):Bool {
		return creditsStuff[num].length <= 1;
	}
}
