.class public Lde/baumann/browser/Activity/BrowserActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BrowserActivity.java"

# interfaces
.implements Lde/baumann/browser/Browser/BrowserController;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/baumann/browser/Activity/BrowserActivity$VideoCompletionListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NEGATIVE_COLOR:[F


# instance fields
.field private adBlock:Lde/baumann/browser/Browser/AdBlock;

.field private bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

.field private contentFrame:Landroid/widget/FrameLayout;

.field private cookieHosts:Lde/baumann/browser/Browser/Cookie;

.field private create:Z

.field private currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

.field private customView:Landroid/view/View;

.field private customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private dialogTitle:Landroid/widget/TextView;

.field private dimen108dp:F

.field private dimen117dp:F

.field private dimen144dp:F

.field private dimen156dp:F

.field private dimen16dp:F

.field private downloadReceiver:Landroid/content/BroadcastReceiver;

.field private fab_imageButtonNav:Landroid/support/design/widget/FloatingActionButton;

.field private fab_more:Landroid/widget/ImageButton;

.field private fab_save:Landroid/widget/ImageButton;

.field private fab_share:Landroid/widget/ImageButton;

.field private fab_tab:Landroid/widget/ImageButton;

.field private filePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private floatButton_moreView:Landroid/view/View;

.field private floatButton_saveLayout:Landroid/widget/LinearLayout;

.field private floatButton_saveView:Landroid/view/View;

.field private floatButton_shareLayout:Landroid/widget/LinearLayout;

.field private floatButton_shareView:Landroid/view/View;

.field private floatButton_tabView:Landroid/view/View;

.field private fullscreenHolder:Landroid/widget/FrameLayout;

.field private inputBox:Landroid/widget/AutoCompleteTextView;

.field private javaHosts:Lde/baumann/browser/Browser/Javascript;

.field private listView:Landroid/widget/ListView;

.field private mahEncryptor:Lcom/mobapphome/mahencryptorlib/MAHEncryptor;

.field private ninjaRelativeLayout:Lde/baumann/browser/View/NinjaRelativeLayout;

.field private ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

.field private final nullParent:Landroid/view/ViewGroup;

.field private omnibox:Landroid/widget/RelativeLayout;

.field private omniboxOverflow:Landroid/widget/ImageButton;

.field private omniboxRefresh:Landroid/widget/ImageButton;

.field private omniboxTitle:Landroid/widget/TextView;

.field private originalOrientation:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private quit:Z

.field private relayoutOK:Landroid/widget/Button;

.field private searchBox:Landroid/widget/EditText;

.field private searchCancel:Landroid/widget/ImageButton;

.field private searchDown:Landroid/widget/ImageButton;

.field private searchPanel:Landroid/widget/RelativeLayout;

.field private searchUp:Landroid/widget/ImageButton;

.field private shortAnimTime:I

.field private sp:Landroid/content/SharedPreferences;

.field private start_tab:I

.field private switcherContainer:Landroid/widget/LinearLayout;

.field private switcherPanel:Lde/baumann/browser/View/SwitcherPanel;

.field private switcherPlus:Landroid/widget/ImageButton;

.field private switcherScroller:Landroid/widget/HorizontalScrollView;

.field private tab_next:Landroid/widget/ImageButton;

.field private tab_prev:Landroid/widget/ImageButton;

.field private title:Ljava/lang/String;

.field private tv2_menu_delete:Landroid/widget/LinearLayout;

.field private tv2_menu_edit:Landroid/widget/LinearLayout;

.field private tv2_menu_newTab:Landroid/widget/LinearLayout;

.field private tv2_menu_newTab_open:Landroid/widget/LinearLayout;

.field private tv2_menu_notification:Landroid/widget/LinearLayout;

.field private tv3_menu_save_as:Landroid/widget/LinearLayout;

.field private tv_closeTab:Landroid/widget/LinearLayout;

.field private tv_delete:Landroid/widget/LinearLayout;

.field private tv_download:Landroid/widget/LinearLayout;

.field private tv_help:Landroid/widget/LinearLayout;

.field private tv_menu_save_as:Landroid/widget/LinearLayout;

.field private tv_new_tabOpen:Landroid/widget/LinearLayout;

.field private tv_openWith:Landroid/widget/LinearLayout;

.field private tv_placeHolder:Landroid/widget/LinearLayout;

.field private tv_placeHolder_2:Landroid/widget/LinearLayout;

.field private tv_quit:Landroid/widget/LinearLayout;

.field private tv_relayout:Landroid/widget/LinearLayout;

.field private tv_saveBookmark:Landroid/widget/LinearLayout;

.field private tv_saveLogin:Landroid/widget/LinearLayout;

.field private tv_saveScreenshot:Landroid/widget/LinearLayout;

.field private tv_saveStart:Landroid/widget/LinearLayout;

.field private tv_searchSite:Landroid/widget/LinearLayout;

.field private tv_settings:Landroid/widget/LinearLayout;

.field private tv_shareLink:Landroid/widget/LinearLayout;

.field private tv_shareScreenshot:Landroid/widget/LinearLayout;

.field private tv_tabPreview:Landroid/widget/RelativeLayout;

.field private url:Ljava/lang/String;

.field private videoView:Landroid/widget/VideoView;

.field private web_next:Landroid/widget/ImageButton;

.field private web_prev:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    .line 236
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lde/baumann/browser/Activity/BrowserActivity;->NEGATIVE_COLOR:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 128
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->nullParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 290
    iput v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->shortAnimTime:I

    .line 297
    iput-boolean v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->quit:Z

    const/4 v1, 0x1

    .line 298
    iput-boolean v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->create:Z

    .line 301
    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    .line 302
    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    return-void
.end method

.method static synthetic access$000(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/SwitcherPanel;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherPanel:Lde/baumann/browser/View/SwitcherPanel;

    return-object p0
.end method

.method static synthetic access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    return-object p0
.end method

.method static synthetic access$1000(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->updateAlbum(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->hideSoftInput(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$1200(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/NinjaWebView;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    return-object p0
.end method

.method static synthetic access$1202(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/NinjaWebView;)Lde/baumann/browser/View/NinjaWebView;
    .locals 0

    .line 128
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    return-object p1
.end method

.method static synthetic access$1300(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->showSoftInput(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$1400(Lde/baumann/browser/Activity/BrowserActivity;)Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/Button;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->relayoutOK:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omnibox:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_searchSite:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/NinjaRelativeLayout;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaRelativeLayout:Lde/baumann/browser/View/NinjaRelativeLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lde/baumann/browser/Activity/BrowserActivity;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showSwitcher()V

    return-void
.end method

.method static synthetic access$200(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/TextView;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omniboxTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lde/baumann/browser/Activity/BrowserActivity;Z)Lde/baumann/browser/Browser/AlbumController;
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->nextAlbumController(Z)Lde/baumann/browser/Browser/AlbumController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/GridItem;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->showGridMenu(Lde/baumann/browser/View/GridItem;)V

    return-void
.end method

.method static synthetic access$2200(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/NinjaRelativeLayout;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->initHomeGrid(Lde/baumann/browser/View/NinjaRelativeLayout;)V

    return-void
.end method

.method static synthetic access$2300(Lde/baumann/browser/Activity/BrowserActivity;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->hideSearchPanel()V

    return-void
.end method

.method static synthetic access$2400(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/Adapter_Record;Ljava/util/List;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lde/baumann/browser/Activity/BrowserActivity;->showListMenu(Lde/baumann/browser/View/Adapter_Record;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$2500(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->toast_login(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/ListView;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$2700(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_newTab:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2702(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 128
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_newTab:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$2800(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Lde/baumann/browser/Activity/BrowserActivity;->addAlbum(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2900(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_newTab_open:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2902(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 128
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_newTab_open:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$300(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->inputBox:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic access$3000(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->pinAlbums(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_notification:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3102(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 128
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_notification:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$3200(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_edit:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3202(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 128
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_edit:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$3300(Lde/baumann/browser/Activity/BrowserActivity;)Lcom/mobapphome/mahencryptorlib/MAHEncryptor;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->mahEncryptor:Lcom/mobapphome/mahencryptorlib/MAHEncryptor;

    return-object p0
.end method

.method static synthetic access$3400(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/NinjaRelativeLayout;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->initPSList(Lde/baumann/browser/View/NinjaRelativeLayout;)V

    return-void
.end method

.method static synthetic access$3500(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_delete:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3502(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 128
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_delete:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$3600(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/Javascript;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->javaHosts:Lde/baumann/browser/Browser/Javascript;

    return-object p0
.end method

.method static synthetic access$3700(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/Cookie;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->cookieHosts:Lde/baumann/browser/Browser/Cookie;

    return-object p0
.end method

.method static synthetic access$3800(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AdBlock;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->adBlock:Lde/baumann/browser/Browser/AdBlock;

    return-object p0
.end method

.method static synthetic access$3900(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/HorizontalScrollView;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherScroller:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method static synthetic access$4000(Lde/baumann/browser/Activity/BrowserActivity;Landroid/view/View;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->initRendering(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4100(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$4200(Lde/baumann/browser/Activity/BrowserActivity;)F
    .locals 0

    .line 128
    iget p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->dimen144dp:F

    return p0
.end method

.method static synthetic access$4300(Lde/baumann/browser/Activity/BrowserActivity;)F
    .locals 0

    .line 128
    iget p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->dimen108dp:F

    return p0
.end method

.method static synthetic access$4400(Lde/baumann/browser/Activity/BrowserActivity;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->hideOmnibox()V

    return-void
.end method

.method static synthetic access$4500(Lde/baumann/browser/Activity/BrowserActivity;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showOmnibox()V

    return-void
.end method

.method static synthetic access$4700(Lde/baumann/browser/Activity/BrowserActivity;)Z
    .locals 0

    .line 128
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->prepareRecord()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4802(Lde/baumann/browser/Activity/BrowserActivity;Z)Z
    .locals 0

    .line 128
    iput-boolean p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->quit:Z

    return p1
.end method

.method static synthetic access$4900(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/TextView;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->dialogTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$5000(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/GridItem;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->showEditDialog(Lde/baumann/browser/View/GridItem;)V

    return-void
.end method

.method static synthetic access$5100(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/Adapter_Record;Ljava/util/List;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lde/baumann/browser/Activity/BrowserActivity;->showEditDialog(Lde/baumann/browser/View/Adapter_Record;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    return-object p0
.end method

.method static synthetic access$602(Lde/baumann/browser/Activity/BrowserActivity;Landroid/support/design/widget/BottomSheetDialog;)Landroid/support/design/widget/BottomSheetDialog;
    .locals 0

    .line 128
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    return-object p1
.end method

.method static synthetic access$700(Lde/baumann/browser/Activity/BrowserActivity;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showHelpDialog()V

    return-void
.end method

.method static synthetic access$800(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/EditText;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchBox:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$900(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 128
    iget-object p0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omniboxRefresh:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private declared-synchronized addAlbum(I)V
    .locals 4

    monitor-enter p0

    .line 2401
    :try_start_0
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showOmnibox()V

    .line 2404
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b003a

    iget-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->nullParent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/baumann/browser/View/NinjaRelativeLayout;

    .line 2405
    invoke-virtual {v0, p0}, Lde/baumann/browser/View/NinjaRelativeLayout;->setBrowserController(Lde/baumann/browser/Browser/BrowserController;)V

    .line 2406
    invoke-virtual {v0, p1}, Lde/baumann/browser/View/NinjaRelativeLayout;->setFlag(I)V

    const p1, 0x7f0e0025

    .line 2407
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lde/baumann/browser/View/NinjaRelativeLayout;->setAlbumTitle(Ljava/lang/String;)V

    .line 2410
    invoke-interface {v0}, Lde/baumann/browser/Browser/AlbumController;->getAlbumView()Landroid/view/View;

    move-result-object p1

    .line 2411
    invoke-static {v0}, Lde/baumann/browser/Browser/BrowserContainer;->add(Lde/baumann/browser/Browser/AlbumController;)V

    .line 2412
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherContainer:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    invoke-virtual {v1, p1, v2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    const/4 p1, 0x1

    .line 2413
    invoke-virtual {p0, v0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->showAlbum(Lde/baumann/browser/Browser/AlbumController;Z)V

    .line 2414
    invoke-direct {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->initHomeGrid(Lde/baumann/browser/View/NinjaRelativeLayout;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2415
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2400
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized addAlbum(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 6

    monitor-enter p0

    .line 2419
    :try_start_0
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showOmnibox()V

    .line 2420
    new-instance v0, Lde/baumann/browser/View/NinjaWebView;

    invoke-direct {v0, p0}, Lde/baumann/browser/View/NinjaWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    .line 2421
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0, p0}, Lde/baumann/browser/View/NinjaWebView;->setBrowserController(Lde/baumann/browser/Browser/BrowserController;)V

    .line 2422
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Lde/baumann/browser/View/NinjaWebView;->setFlag(I)V

    .line 2423
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0, p1}, Lde/baumann/browser/View/NinjaWebView;->setAlbumTitle(Ljava/lang/String;)V

    .line 2424
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-static {p0, p1}, Lde/baumann/browser/Unit/ViewUnit;->bound(Landroid/content/Context;Landroid/view/View;)V

    .line 2426
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->getAlbumView()Landroid/view/View;

    move-result-object p1

    .line 2427
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v0, v0, Lde/baumann/browser/View/NinjaWebView;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 2428
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-static {v0}, Lde/baumann/browser/Browser/BrowserContainer;->indexOf(Lde/baumann/browser/Browser/AlbumController;)I

    move-result v0

    add-int/2addr v0, v1

    .line 2429
    iget-object v3, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-static {v3, v0}, Lde/baumann/browser/Browser/BrowserContainer;->add(Lde/baumann/browser/Browser/AlbumController;I)V

    .line 2430
    iget-object v3, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherContainer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2432
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-static {v0}, Lde/baumann/browser/Browser/BrowserContainer;->add(Lde/baumann/browser/Browser/AlbumController;)V

    .line 2433
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    :goto_0
    if-nez p3, :cond_1

    .line 2437
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-static {p0, p1}, Lde/baumann/browser/Unit/ViewUnit;->bound(Landroid/content/Context;Landroid/view/View;)V

    .line 2438
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1, p2}, Lde/baumann/browser/View/NinjaWebView;->loadUrl(Ljava/lang/String;)V

    .line 2439
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2440
    monitor-exit p0

    return-void

    .line 2443
    :cond_1
    :try_start_1
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p0, p1, v1}, Lde/baumann/browser/Activity/BrowserActivity;->showAlbum(Lde/baumann/browser/Browser/AlbumController;Z)V

    if-eqz p2, :cond_2

    .line 2445
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2446
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1, p2}, Lde/baumann/browser/View/NinjaWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    .line 2448
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 2449
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 2450
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2452
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2418
    monitor-exit p0

    throw p1
.end method

.method private closeTabConfirmation(Ljava/lang/Runnable;)V
    .locals 3

    .line 2546
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sp_close_tab_confirm"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2547
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2549
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherPanel:Lde/baumann/browser/View/SwitcherPanel;

    invoke-virtual {v0}, Lde/baumann/browser/View/SwitcherPanel;->expanded()V

    .line 2550
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    const v0, 0x7f0b002b

    const/4 v1, 0x0

    .line 2551
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09004b

    .line 2552
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e00ef

    .line 2553
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f090019

    .line 2554
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2555
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$62;

    invoke-direct {v2, p0, p1}, Lde/baumann/browser/Activity/BrowserActivity$62;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09000f

    .line 2562
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 2563
    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$63;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$63;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2569
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 2570
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    :goto_0
    return-void
.end method

.method private dispatchIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1391
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/baumann/browser/Service/HolderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 1392
    invoke-static {v1}, Lde/baumann/browser/Unit/IntentUnit;->setClear(Z)V

    .line 1393
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->stopService(Landroid/content/Intent;)Z

    .line 1395
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1397
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "query"

    .line 1399
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->pinAlbums(Ljava/lang/String;)V

    goto :goto_0

    .line 1400
    :cond_0
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1401
    iput-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    goto :goto_0

    :cond_1
    const-string v1, "sc_history"

    .line 1402
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p1, 0x101

    .line 1403
    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->addAlbum(I)V

    goto :goto_0

    :cond_2
    const-string v1, "sc_bookmark"

    .line 1404
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p1, 0x100

    .line 1405
    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->addAlbum(I)V

    goto :goto_0

    :cond_3
    const-string v1, "sc_login"

    .line 1406
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p1, 0x105

    .line 1407
    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->addAlbum(I)V

    goto :goto_0

    :cond_4
    const-string v1, "sc_startPage"

    .line 1408
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 p1, 0x102

    .line 1409
    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->addAlbum(I)V

    goto :goto_0

    :cond_5
    const-string v1, "android.intent.action.SEND"

    .line 1410
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "android.intent.extra.TEXT"

    .line 1411
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->pinAlbums(Ljava/lang/String;)V

    goto :goto_0

    .line 1413
    :cond_6
    invoke-direct {p0, v2}, Lde/baumann/browser/Activity/BrowserActivity;->pinAlbums(Ljava/lang/String;)V

    .line 1415
    :goto_0
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private doubleTapsHide()V
    .locals 4

    .line 3008
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 3009
    iget-boolean v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->quit:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3010
    iput-boolean v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->quit:Z

    .line 3011
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showOverflow()Z

    .line 3012
    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$77;

    invoke-direct {v1, p0, v0}, Lde/baumann/browser/Activity/BrowserActivity$77;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/util/Timer;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 3020
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 3021
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_imageButtonNav:Landroid/support/design/widget/FloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private doubleTapsQuit()V
    .locals 3

    .line 2980
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sp_close_browser_confirm"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2981
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->finish()V

    goto :goto_0

    .line 2983
    :cond_0
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    const v0, 0x7f0b002b

    const/4 v1, 0x0

    .line 2984
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09004b

    .line 2985
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e0106

    .line 2986
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f090019

    .line 2987
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2988
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$75;

    invoke-direct {v2, p0}, Lde/baumann/browser/Activity/BrowserActivity$75;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09000f

    .line 2994
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2995
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$76;

    invoke-direct {v2, p0}, Lde/baumann/browser/Activity/BrowserActivity$76;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3002
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 3003
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    :goto_0
    return-void
.end method

.method private getAdBlock()Lde/baumann/browser/Browser/AdBlock;
    .locals 1

    .line 233
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->adBlock:Lde/baumann/browser/Browser/AdBlock;

    return-object v0
.end method

.method private getCookieHosts()Lde/baumann/browser/Browser/Cookie;
    .locals 1

    .line 230
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->cookieHosts:Lde/baumann/browser/Browser/Cookie;

    return-object v0
.end method

.method private getJavaHosts()Lde/baumann/browser/Browser/Javascript;
    .locals 1

    .line 227
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->javaHosts:Lde/baumann/browser/Browser/Javascript;

    return-object v0
.end method

.method private hideOmnibox()V
    .locals 4

    .line 3066
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omnibox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3068
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 3069
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3070
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 3071
    iget-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3073
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omnibox:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3074
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3076
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "sp_hideNav"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "sp_hideNav"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3077
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_imageButtonNav:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideSearchPanel()V
    .locals 3

    .line 3083
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchBox:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->hideSoftInput(Landroid/widget/EditText;)V

    .line 3084
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omniboxTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3085
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchBox:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3086
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchPanel:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3087
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omnibox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private hideSoftInput(Landroid/widget/EditText;)V
    .locals 2

    .line 3026
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    const-string v0, "input_method"

    .line 3027
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3029
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initBHList(Lde/baumann/browser/View/NinjaRelativeLayout;)V
    .locals 3

    .line 1791
    new-instance v0, Lde/baumann/browser/Database/RecordAction;

    invoke-direct {v0, p0}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1792
    invoke-virtual {v0, v1}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 1794
    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaRelativeLayout;->getFlag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1808
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 1805
    :pswitch_0
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->listHistory()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 1796
    :pswitch_1
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->listBookmarks()Ljava/util/List;

    move-result-object v1

    .line 1797
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$40;

    invoke-direct {v2, p0}, Lde/baumann/browser/Activity/BrowserActivity$40;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1811
    :goto_0
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->close()V

    const v0, 0x7f090079

    .line 1813
    invoke-virtual {p1, v0}, Lde/baumann/browser/View/NinjaRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->listView:Landroid/widget/ListView;

    .line 1815
    new-instance p1, Lde/baumann/browser/View/Adapter_Record;

    invoke-direct {p1, p0, v1}, Lde/baumann/browser/View/Adapter_Record;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 1816
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1817
    invoke-virtual {p1}, Lde/baumann/browser/View/Adapter_Record;->notifyDataSetChanged()V

    .line 1818
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->listView:Landroid/widget/ListView;

    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$41;

    invoke-direct {v2, p0, v1}, Lde/baumann/browser/Activity/BrowserActivity$41;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1825
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->listView:Landroid/widget/ListView;

    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$42;

    invoke-direct {v2, p0, p1, v1}, Lde/baumann/browser/Activity/BrowserActivity$42;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/Adapter_Record;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initHomeGrid(Lde/baumann/browser/View/NinjaRelativeLayout;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1582
    invoke-virtual/range {p1 .. p1}, Lde/baumann/browser/View/NinjaRelativeLayout;->getFlag()I

    move-result v2

    .line 1584
    iget-object v3, v0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 1587
    invoke-virtual {v0, v1, v3}, Lde/baumann/browser/Activity/BrowserActivity;->showAlbum(Lde/baumann/browser/Browser/AlbumController;Z)V

    .line 1588
    invoke-direct/range {p0 .. p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateOmnibox()V

    :cond_0
    const v3, 0x7f090078

    .line 1591
    invoke-virtual {v1, v3}, Lde/baumann/browser/View/NinjaRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/askerov/dynamicgrid/DynamicGridView;

    const v4, 0x7f090079

    .line 1592
    invoke-virtual {v1, v4}, Lde/baumann/browser/View/NinjaRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    const v5, 0x7f0900af

    .line 1593
    invoke-virtual {v1, v5}, Lde/baumann/browser/View/NinjaRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0900b1

    .line 1594
    invoke-virtual {v1, v6}, Lde/baumann/browser/View/NinjaRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0900ab

    .line 1595
    invoke-virtual {v1, v7}, Lde/baumann/browser/View/NinjaRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0900ad

    .line 1596
    invoke-virtual {v1, v8}, Lde/baumann/browser/View/NinjaRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0900b0

    .line 1598
    invoke-virtual {v1, v9}, Lde/baumann/browser/View/NinjaRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    const v10, 0x7f0900ae

    .line 1599
    invoke-virtual {v1, v10}, Lde/baumann/browser/View/NinjaRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    const v11, 0x7f0900aa

    .line 1600
    invoke-virtual {v1, v11}, Lde/baumann/browser/View/NinjaRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    const v12, 0x7f0900ac

    .line 1601
    invoke-virtual {v1, v12}, Lde/baumann/browser/View/NinjaRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    const/16 v13, 0x102

    const/4 v15, 0x0

    const/4 v14, 0x4

    if-ne v2, v13, :cond_1

    .line 1605
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1606
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1607
    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1608
    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0e0020

    .line 1610
    invoke-virtual {v0, v2}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/baumann/browser/View/NinjaRelativeLayout;->setAlbumTitle(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v3, v15}, Lorg/askerov/dynamicgrid/DynamicGridView;->setVisibility(I)V

    const/16 v2, 0x8

    .line 1612
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setVisibility(I)V

    const/16 v2, 0x64

    .line 1613
    invoke-virtual {v0, v2}, Lde/baumann/browser/Activity/BrowserActivity;->updateProgress(I)V

    .line 1614
    new-instance v2, Lde/baumann/browser/Database/RecordAction;

    invoke-direct {v2, v0}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    .line 1615
    invoke-virtual {v2, v15}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 1616
    invoke-virtual {v2}, Lde/baumann/browser/Database/RecordAction;->listGrid()Ljava/util/List;

    move-result-object v4

    .line 1617
    invoke-virtual {v2}, Lde/baumann/browser/Database/RecordAction;->close()V

    .line 1619
    new-instance v2, Lde/baumann/browser/View/GridAdapter;

    const/4 v5, 0x2

    invoke-direct {v2, v0, v4, v5}, Lde/baumann/browser/View/GridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 1620
    invoke-virtual {v3, v2}, Lorg/askerov/dynamicgrid/DynamicGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1621
    invoke-virtual {v2}, Lde/baumann/browser/View/GridAdapter;->notifyDataSetChanged()V

    .line 1623
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$29;

    invoke-direct {v2, v0, v4}, Lde/baumann/browser/Activity/BrowserActivity$29;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/util/List;)V

    invoke-virtual {v3, v2}, Lorg/askerov/dynamicgrid/DynamicGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1630
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$30;

    invoke-direct {v2, v0, v4}, Lde/baumann/browser/Activity/BrowserActivity$30;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/util/List;)V

    invoke-virtual {v3, v2}, Lorg/askerov/dynamicgrid/DynamicGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0

    :cond_1
    const/16 v13, 0x8

    .line 1639
    invoke-virtual {v3, v13}, Lorg/askerov/dynamicgrid/DynamicGridView;->setVisibility(I)V

    .line 1640
    invoke-virtual {v4, v15}, Landroid/widget/ListView;->setVisibility(I)V

    const/16 v3, 0x105

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1653
    :pswitch_0
    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1654
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1655
    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1656
    invoke-virtual {v8, v15}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0e001f

    .line 1657
    invoke-virtual {v0, v2}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/baumann/browser/View/NinjaRelativeLayout;->setAlbumTitle(Ljava/lang/String;)V

    const/16 v2, 0x101

    .line 1658
    invoke-virtual {v1, v2}, Lde/baumann/browser/View/NinjaRelativeLayout;->setFlag(I)V

    .line 1659
    invoke-direct/range {p0 .. p1}, Lde/baumann/browser/Activity/BrowserActivity;->initBHList(Lde/baumann/browser/View/NinjaRelativeLayout;)V

    goto :goto_0

    .line 1644
    :pswitch_1
    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1645
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1646
    invoke-virtual {v7, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1647
    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0e001d

    .line 1648
    invoke-virtual {v0, v2}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/baumann/browser/View/NinjaRelativeLayout;->setAlbumTitle(Ljava/lang/String;)V

    const/16 v2, 0x100

    .line 1649
    invoke-virtual {v1, v2}, Lde/baumann/browser/View/NinjaRelativeLayout;->setFlag(I)V

    .line 1650
    invoke-direct/range {p0 .. p1}, Lde/baumann/browser/Activity/BrowserActivity;->initBHList(Lde/baumann/browser/View/NinjaRelativeLayout;)V

    goto :goto_0

    .line 1662
    :cond_2
    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1663
    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1664
    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1665
    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0e0021

    .line 1666
    invoke-virtual {v0, v2}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/baumann/browser/View/NinjaRelativeLayout;->setAlbumTitle(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v1, v3}, Lde/baumann/browser/View/NinjaRelativeLayout;->setFlag(I)V

    .line 1668
    invoke-direct/range {p0 .. p1}, Lde/baumann/browser/Activity/BrowserActivity;->initPSList(Lde/baumann/browser/View/NinjaRelativeLayout;)V

    .line 1673
    :goto_0
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$31;

    invoke-direct {v2, v0, v1}, Lde/baumann/browser/Activity/BrowserActivity$31;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/NinjaRelativeLayout;)V

    invoke-virtual {v9, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1682
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$32;

    invoke-direct {v2, v0, v1}, Lde/baumann/browser/Activity/BrowserActivity$32;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/NinjaRelativeLayout;)V

    invoke-virtual {v10, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1691
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$33;

    invoke-direct {v2, v0, v1}, Lde/baumann/browser/Activity/BrowserActivity$33;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/NinjaRelativeLayout;)V

    invoke-virtual {v11, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1700
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$34;

    invoke-direct {v2, v0, v1}, Lde/baumann/browser/Activity/BrowserActivity$34;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/NinjaRelativeLayout;)V

    invoke-virtual {v12, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initOmnibox()V
    .locals 4

    const v0, 0x7f090090

    .line 1447
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omnibox:Landroid/widget/RelativeLayout;

    const v0, 0x7f090091

    .line 1448
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->inputBox:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0900a8

    .line 1449
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omniboxRefresh:Landroid/widget/ImageButton;

    const v0, 0x7f0900a7

    .line 1450
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omniboxOverflow:Landroid/widget/ImageButton;

    const v0, 0x7f0900a9

    .line 1451
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omniboxTitle:Landroid/widget/TextView;

    const v0, 0x7f090092

    .line 1452
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 1454
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "nav_position"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f090059

    packed-switch v0, :pswitch_data_0

    .line 1467
    invoke-virtual {p0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_imageButtonNav:Landroid/support/design/widget/FloatingActionButton;

    goto :goto_0

    :pswitch_0
    const v0, 0x7f090057

    .line 1464
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_imageButtonNav:Landroid/support/design/widget/FloatingActionButton;

    goto :goto_0

    :pswitch_1
    const v0, 0x7f090058

    .line 1461
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_imageButtonNav:Landroid/support/design/widget/FloatingActionButton;

    goto :goto_0

    .line 1458
    :pswitch_2
    invoke-virtual {p0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_imageButtonNav:Landroid/support/design/widget/FloatingActionButton;

    .line 1471
    :goto_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_imageButtonNav:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$24;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$24;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1481
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_imageButtonNav:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1482
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_imageButtonNav:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$25;

    invoke-direct {v1, p0, p0}, Lde/baumann/browser/Activity/BrowserActivity$25;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1512
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->inputBox:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lde/baumann/browser/View/SwipeToBoundListener;

    iget-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->omnibox:Landroid/widget/RelativeLayout;

    new-instance v3, Lde/baumann/browser/Activity/BrowserActivity$26;

    invoke-direct {v3, p0}, Lde/baumann/browser/Activity/BrowserActivity$26;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-direct {v1, v2, v3}, Lde/baumann/browser/View/SwipeToBoundListener;-><init>(Landroid/view/View;Lde/baumann/browser/View/SwipeToBoundListener$BoundCallback;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1544
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->inputBox:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$27;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$27;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1563
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateBookmarks()V

    .line 1564
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateAutoComplete()V

    .line 1566
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omniboxRefresh:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1567
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omniboxOverflow:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1569
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omniboxOverflow:Landroid/widget/ImageButton;

    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$28;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$28;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initPSList(Lde/baumann/browser/View/NinjaRelativeLayout;)V
    .locals 10

    .line 1836
    new-instance v0, Lde/baumann/browser/Database/Pass;

    invoke-direct {v0, p0}, Lde/baumann/browser/Database/Pass;-><init>(Landroid/content/Context;)V

    .line 1837
    invoke-virtual {v0}, Lde/baumann/browser/Database/Pass;->open()V

    const/4 v1, 0x2

    .line 1840
    new-array v7, v1, [I

    fill-array-data v7, :array_0

    const-string v1, "pass_title"

    const-string v2, "pass_content"

    .line 1844
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v6

    .line 1849
    invoke-virtual {v0}, Lde/baumann/browser/Database/Pass;->fetchAllData()Landroid/database/Cursor;

    move-result-object v1

    .line 1850
    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    const v4, 0x7f0b0038

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    const v2, 0x7f090079

    .line 1852
    invoke-virtual {p1, v2}, Lde/baumann/browser/View/NinjaRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->listView:Landroid/widget/ListView;

    .line 1853
    iget-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1855
    iget-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->listView:Landroid/widget/ListView;

    new-instance v3, Lde/baumann/browser/Activity/BrowserActivity$43;

    invoke-direct {v3, p0, v1}, Lde/baumann/browser/Activity/BrowserActivity$43;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/database/Cursor;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1866
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->listView:Landroid/widget/ListView;

    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$44;

    invoke-direct {v2, p0, v0, p1}, Lde/baumann/browser/Activity/BrowserActivity$44;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/Database/Pass;Lde/baumann/browser/View/NinjaRelativeLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0900bf
        0x7f0900c0
    .end array-data
.end method

.method private initRendering(Landroid/view/View;)V
    .locals 5

    .line 1420
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v0, v0, Lde/baumann/browser/View/NinjaWebView;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "sp_invert"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1422
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1423
    sget-object v3, Lde/baumann/browser/Activity/BrowserActivity;->NEGATIVE_COLOR:[F

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1424
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    .line 1425
    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1426
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1427
    invoke-virtual {v4, v2, v3}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 1428
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1429
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1431
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1433
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private initSearchPanel()V
    .locals 2

    const v0, 0x7f090097

    .line 1711
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchPanel:Landroid/widget/RelativeLayout;

    const v0, 0x7f090094

    .line 1712
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchBox:Landroid/widget/EditText;

    const v0, 0x7f090098

    .line 1713
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchUp:Landroid/widget/ImageButton;

    const v0, 0x7f090096

    .line 1714
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchDown:Landroid/widget/ImageButton;

    const v0, 0x7f090095

    .line 1715
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchCancel:Landroid/widget/ImageButton;

    .line 1717
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchBox:Landroid/widget/EditText;

    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$35;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$35;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1734
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchBox:Landroid/widget/EditText;

    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$36;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$36;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1749
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchUp:Landroid/widget/ImageButton;

    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$37;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$37;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1765
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchDown:Landroid/widget/ImageButton;

    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$38;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$38;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1781
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchCancel:Landroid/widget/ImageButton;

    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$39;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$39;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initSwitcherView()V
    .locals 1

    const v0, 0x7f0900f5

    .line 1438
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherScroller:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0900f2

    .line 1439
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0900f4

    .line 1440
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherPlus:Landroid/widget/ImageButton;

    .line 1441
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherPlus:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1442
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    check-cast v0, Lde/baumann/browser/View/NinjaWebView;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    return-void
.end method

.method private nextAlbumController(Z)Lde/baumann/browser/Browser/AlbumController;
    .locals 3

    .line 3542
    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 3543
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    return-object p1

    .line 3546
    :cond_0
    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->list()Ljava/util/List;

    move-result-object v0

    .line 3547
    iget-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eqz p1, :cond_1

    add-int/2addr v2, v1

    .line 3550
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lt v2, p1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_2

    .line 3556
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    .line 3560
    :cond_2
    :goto_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/baumann/browser/Browser/AlbumController;

    return-object p1
.end method

.method private onKeyCodeBack()Z
    .locals 3

    .line 245
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->inputBox:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->hideSoftInput(Landroid/widget/EditText;)V

    .line 246
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherPanel:Lde/baumann/browser/View/SwitcherPanel;

    invoke-virtual {v0}, Lde/baumann/browser/View/SwitcherPanel;->getStatus()Lde/baumann/browser/View/SwitcherPanel$Status;

    move-result-object v0

    sget-object v1, Lde/baumann/browser/View/SwitcherPanel$Status;->EXPANDED:Lde/baumann/browser/View/SwitcherPanel$Status;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherPanel:Lde/baumann/browser/View/SwitcherPanel;

    invoke-virtual {v0}, Lde/baumann/browser/View/SwitcherPanel;->expanded()V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omnibox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 249
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showOmnibox()V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-nez v0, :cond_2

    .line 251
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->finish()V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v0, v0, Lde/baumann/browser/View/NinjaWebView;

    if-eqz v0, :cond_4

    .line 253
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    check-cast v0, Lde/baumann/browser/View/NinjaWebView;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    .line 254
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->goBack()V

    goto :goto_0

    .line 257
    :cond_3
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->removeAlbum(Lde/baumann/browser/Browser/AlbumController;)V

    goto :goto_0

    .line 259
    :cond_4
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v0, v0, Lde/baumann/browser/View/NinjaRelativeLayout;

    if-eqz v0, :cond_6

    .line 260
    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->size()I

    move-result v0

    if-gt v0, v2, :cond_5

    .line 261
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->doubleTapsQuit()V

    goto :goto_0

    .line 263
    :cond_5
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->removeAlbum(Lde/baumann/browser/Browser/AlbumController;)V

    goto :goto_0

    .line 266
    :cond_6
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->finish()V

    :goto_0
    return v2
.end method

.method private declared-synchronized pinAlbums(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 2455
    :try_start_0
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showOmnibox()V

    .line 2456
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->inputBox:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->hideSoftInput(Landroid/widget/EditText;)V

    .line 2457
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->hideSearchPanel()V

    .line 2458
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2460
    new-instance v0, Lde/baumann/browser/View/NinjaWebView;

    invoke-direct {v0, p0}, Lde/baumann/browser/View/NinjaWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    .line 2462
    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/baumann/browser/Browser/AlbumController;

    .line 2463
    instance-of v3, v1, Lde/baumann/browser/View/NinjaWebView;

    if-eqz v3, :cond_0

    .line 2464
    move-object v3, v1

    check-cast v3, Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v3, p0}, Lde/baumann/browser/View/NinjaWebView;->setBrowserController(Lde/baumann/browser/Browser/BrowserController;)V

    goto :goto_1

    .line 2465
    :cond_0
    instance-of v3, v1, Lde/baumann/browser/View/NinjaRelativeLayout;

    if-eqz v3, :cond_1

    .line 2466
    move-object v3, v1

    check-cast v3, Lde/baumann/browser/View/NinjaRelativeLayout;

    invoke-virtual {v3, p0}, Lde/baumann/browser/View/NinjaRelativeLayout;->setBrowserController(Lde/baumann/browser/Browser/BrowserController;)V

    .line 2468
    :cond_1
    :goto_1
    iget-object v3, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherContainer:Landroid/widget/LinearLayout;

    invoke-interface {v1}, Lde/baumann/browser/Browser/AlbumController;->getAlbumView()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 2469
    invoke-interface {v1}, Lde/baumann/browser/Browser/AlbumController;->getAlbumView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2470
    invoke-interface {v1}, Lde/baumann/browser/Browser/AlbumController;->deactivate()V

    goto :goto_0

    .line 2473
    :cond_2
    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    if-nez p1, :cond_3

    .line 2474
    iget p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->start_tab:I

    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->addAlbum(I)V

    goto/16 :goto_2

    .line 2475
    :cond_3
    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->size()I

    move-result v0

    if-lt v0, v1, :cond_5

    if-nez p1, :cond_5

    .line 2476
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-eqz p1, :cond_4

    .line 2477
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-interface {p1}, Lde/baumann/browser/Browser/AlbumController;->activate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2478
    monitor-exit p0

    return-void

    .line 2481
    :cond_4
    :try_start_1
    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->size()I

    move-result p1

    sub-int/2addr p1, v1

    .line 2482
    invoke-static {p1}, Lde/baumann/browser/Browser/BrowserContainer;->get(I)Lde/baumann/browser/Browser/AlbumController;

    move-result-object p1

    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    .line 2483
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2484
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2485
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-interface {p1}, Lde/baumann/browser/Browser/AlbumController;->activate()V

    .line 2487
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateOmnibox()V

    goto :goto_2

    .line 2489
    :cond_5
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0, p0}, Lde/baumann/browser/View/NinjaWebView;->setBrowserController(Lde/baumann/browser/Browser/BrowserController;)V

    .line 2490
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Lde/baumann/browser/View/NinjaWebView;->setFlag(I)V

    .line 2491
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    const v1, 0x7f0e0022

    invoke-virtual {p0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/baumann/browser/View/NinjaWebView;->setAlbumTitle(Ljava/lang/String;)V

    .line 2492
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-static {p0, v0}, Lde/baumann/browser/Unit/ViewUnit;->bound(Landroid/content/Context;Landroid/view/View;)V

    .line 2493
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0, p1}, Lde/baumann/browser/View/NinjaWebView;->loadUrl(Ljava/lang/String;)V

    .line 2495
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-static {p1}, Lde/baumann/browser/Browser/BrowserContainer;->add(Lde/baumann/browser/Browser/AlbumController;)V

    .line 2496
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->getAlbumView()Landroid/view/View;

    move-result-object p1

    .line 2497
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 2498
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2499
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2501
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-eqz p1, :cond_6

    .line 2502
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-interface {p1}, Lde/baumann/browser/Browser/AlbumController;->deactivate()V

    .line 2504
    :cond_6
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    .line 2505
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-interface {p1}, Lde/baumann/browser/Browser/AlbumController;->activate()V

    .line 2507
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateOmnibox()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2509
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2454
    monitor-exit p0

    throw p1
.end method

.method private prepareRecord()Z
    .locals 3

    .line 273
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v0, v0, Lde/baumann/browser/View/NinjaWebView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    check-cast v0, Lde/baumann/browser/View/NinjaWebView;

    .line 278
    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_2

    .line 281
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "about:"

    .line 284
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mailto:"

    .line 285
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "intent://"

    .line 286
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method private printPDF(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 1363
    :try_start_0
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pdf_create"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p1, :cond_0

    .line 1366
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "pdf_share"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1368
    :cond_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "pdf_share"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1371
    :goto_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lde/baumann/browser/Unit/HelperUnit;->fileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1372
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1374
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".pdf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1375
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "pdf_path"

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1377
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".pdf"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "print"

    .line 1379
    invoke-virtual {p0, v2}, Lde/baumann/browser/Activity/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintManager;

    .line 1380
    iget-object v3, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v3, p1}, Lde/baumann/browser/View/NinjaWebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object p1

    .line 1381
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintManager;

    new-instance v3, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v3

    invoke-virtual {v2, v1, p1, v3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1384
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pdf_create"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1385
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private scrollChange()V
    .locals 3

    .line 2672
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sp_hideToolbar"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sp_hideToolbar"

    const-string v2, "0"

    .line 2673
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2675
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$68;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$68;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v0, v1}, Lde/baumann/browser/View/NinjaWebView;->setOnScrollChangeListener(Lde/baumann/browser/View/NinjaWebView$OnScrollChangeListener;)V

    :cond_1
    return-void
.end method

.method private setCustomFullscreen(Z)V
    .locals 1

    .line 3531
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 3534
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3536
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3537
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showOmnibox()V

    :goto_0
    return-void
.end method

.method private showEditDialog(Lde/baumann/browser/View/Adapter_Record;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/baumann/browser/View/Adapter_Record;",
            "Ljava/util/List<",
            "Lde/baumann/browser/Database/Record;",
            ">;I)V"
        }
    .end annotation

    .line 3486
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b002d

    const/4 v2, 0x0

    .line 3487
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3489
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lde/baumann/browser/Database/Record;

    const p3, 0x7f090049

    .line 3490
    invoke-virtual {v1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    const v2, 0x7f0e0040

    .line 3492
    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 3493
    invoke-virtual {p2}, Lde/baumann/browser/Database/Record;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3495
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0e0058

    .line 3496
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3497
    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$92;

    invoke-direct {v1, p0, p3, p2, p1}, Lde/baumann/browser/Activity/BrowserActivity$92;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;Lde/baumann/browser/Database/Record;Lde/baumann/browser/View/Adapter_Record;)V

    const p1, 0x7f0e0026

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3516
    new-instance p1, Lde/baumann/browser/Activity/BrowserActivity$93;

    invoke-direct {p1, p0, p3}, Lde/baumann/browser/Activity/BrowserActivity$93;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V

    const p2, 0x7f0e0023

    invoke-virtual {v0, p2, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3524
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 3525
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 3526
    invoke-direct {p0, p3}, Lde/baumann/browser/Activity/BrowserActivity;->showSoftInput(Landroid/widget/EditText;)V

    return-void
.end method

.method private showEditDialog(Lde/baumann/browser/View/GridItem;)V
    .locals 4

    .line 3444
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b002d

    const/4 v2, 0x0

    .line 3445
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090049

    .line 3447
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0e0040

    .line 3449
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 3450
    invoke-virtual {p1}, Lde/baumann/browser/View/GridItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3452
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0e0058

    .line 3453
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3454
    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$90;

    invoke-direct {v1, p0, v2, p1}, Lde/baumann/browser/Activity/BrowserActivity$90;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;Lde/baumann/browser/View/GridItem;)V

    const p1, 0x7f0e0026

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3471
    new-instance p1, Lde/baumann/browser/Activity/BrowserActivity$91;

    invoke-direct {p1, p0, v2}, Lde/baumann/browser/Activity/BrowserActivity$91;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V

    const v1, 0x7f0e0023

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3479
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 3480
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 3481
    invoke-direct {p0, v2}, Lde/baumann/browser/Activity/BrowserActivity;->showSoftInput(Landroid/widget/EditText;)V

    return-void
.end method

.method private showGridMenu(Lde/baumann/browser/View/GridItem;)V
    .locals 4

    .line 3231
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    const v0, 0x7f0b0032

    const/4 v1, 0x0

    .line 3232
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090110

    .line 3234
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_newTab:Landroid/widget/LinearLayout;

    .line 3235
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_newTab:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3236
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_newTab:Landroid/widget/LinearLayout;

    new-instance v3, Lde/baumann/browser/Activity/BrowserActivity$80;

    invoke-direct {v3, p0, p1}, Lde/baumann/browser/Activity/BrowserActivity$80;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/GridItem;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090111

    .line 3245
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_newTab_open:Landroid/widget/LinearLayout;

    .line 3246
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_newTab_open:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3247
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_newTab_open:Landroid/widget/LinearLayout;

    new-instance v3, Lde/baumann/browser/Activity/BrowserActivity$81;

    invoke-direct {v3, p0, p1}, Lde/baumann/browser/Activity/BrowserActivity$81;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/GridItem;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09010e

    .line 3255
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_delete:Landroid/widget/LinearLayout;

    .line 3256
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_delete:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3257
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_delete:Landroid/widget/LinearLayout;

    new-instance v3, Lde/baumann/browser/Activity/BrowserActivity$82;

    invoke-direct {v3, p0, p1}, Lde/baumann/browser/Activity/BrowserActivity$82;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/GridItem;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09010f

    .line 3291
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_edit:Landroid/widget/LinearLayout;

    .line 3292
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_edit:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3293
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_edit:Landroid/widget/LinearLayout;

    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$83;

    invoke-direct {v2, p0, p1}, Lde/baumann/browser/Activity/BrowserActivity$83;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/GridItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3301
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 3302
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    return-void
.end method

.method private showHelpDialog()V
    .locals 10

    .line 3396
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    const v0, 0x7f0b002f

    const/4 v1, 0x0

    .line 3397
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09002b

    .line 3399
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f090031

    .line 3400
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f09002e

    .line 3401
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f09002d

    .line 3402
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f09002f

    .line 3403
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f090030

    .line 3404
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f09002c

    .line 3405
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f09002a

    .line 3406
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f08006d

    .line 3408
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f08006b

    .line 3409
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f080068

    .line 3410
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f080067

    .line 3411
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f080069

    .line 3412
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f08006a

    .line 3413
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f080066

    .line 3414
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f08006c

    .line 3415
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f09004c

    .line 3417
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e005b

    .line 3418
    invoke-virtual {p0, v2}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090061

    .line 3420
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 3421
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$88;

    invoke-direct {v2, p0}, Lde/baumann/browser/Activity/BrowserActivity$88;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090065

    .line 3428
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 3429
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$89;

    invoke-direct {v2, p0}, Lde/baumann/browser/Activity/BrowserActivity$89;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3438
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 3439
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    return-void
.end method

.method private showListMenu(Lde/baumann/browser/View/Adapter_Record;Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/baumann/browser/View/Adapter_Record;",
            "Ljava/util/List<",
            "Lde/baumann/browser/Database/Record;",
            ">;I)V"
        }
    .end annotation

    .line 3308
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lde/baumann/browser/Database/Record;

    .line 3310
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    const v0, 0x7f0b0032

    const/4 v1, 0x0

    .line 3311
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3313
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    check-cast v1, Lde/baumann/browser/View/NinjaRelativeLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaRelativeLayout:Lde/baumann/browser/View/NinjaRelativeLayout;

    const v1, 0x7f090110

    .line 3315
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_newTab:Landroid/widget/LinearLayout;

    .line 3316
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_newTab:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3317
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_newTab:Landroid/widget/LinearLayout;

    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$84;

    invoke-direct {v2, p0, v3}, Lde/baumann/browser/Activity/BrowserActivity$84;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/Database/Record;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090111

    .line 3326
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_newTab_open:Landroid/widget/LinearLayout;

    .line 3327
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_newTab_open:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3328
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_newTab_open:Landroid/widget/LinearLayout;

    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$85;

    invoke-direct {v2, p0, v3}, Lde/baumann/browser/Activity/BrowserActivity$85;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/Database/Record;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09010e

    .line 3336
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_delete:Landroid/widget/LinearLayout;

    .line 3337
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_delete:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3338
    iget-object v8, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_delete:Landroid/widget/LinearLayout;

    new-instance v9, Lde/baumann/browser/Activity/BrowserActivity$86;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lde/baumann/browser/Activity/BrowserActivity$86;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/Database/Record;Ljava/util/List;ILde/baumann/browser/View/Adapter_Record;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09010f

    .line 3378
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_edit:Landroid/widget/LinearLayout;

    .line 3379
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaRelativeLayout:Lde/baumann/browser/View/NinjaRelativeLayout;

    invoke-virtual {v1}, Lde/baumann/browser/View/NinjaRelativeLayout;->getFlag()I

    move-result v1

    const/16 v2, 0x101

    if-eq v1, v2, :cond_0

    .line 3380
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_edit:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3381
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv2_menu_edit:Landroid/widget/LinearLayout;

    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$87;

    invoke-direct {v2, p0, p1, p2, p3}, Lde/baumann/browser/Activity/BrowserActivity$87;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/Adapter_Record;Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3390
    :cond_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 3391
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    return-void
.end method

.method private showOmnibox()V
    .locals 4

    .line 3045
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omnibox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x38

    .line 3048
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 3051
    iget-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3052
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v3, 0x0

    .line 3053
    invoke-virtual {v2, v3, v0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 3054
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3056
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3057
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omnibox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3059
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "sp_hideNav"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3060
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_imageButtonNav:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showOverflow()Z
    .locals 2

    .line 3145
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    const v0, 0x7f0b0031

    const/4 v1, 0x0

    .line 3146
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090063

    .line 3148
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_saveLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f090067

    .line 3149
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_shareLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f090069

    .line 3151
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_tab:Landroid/widget/ImageButton;

    .line 3152
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_tab:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090066

    .line 3153
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_share:Landroid/widget/ImageButton;

    .line 3154
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_share:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090062

    .line 3155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_save:Landroid/widget/ImageButton;

    .line 3156
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_save:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09005f

    .line 3157
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_more:Landroid/widget/ImageButton;

    .line 3158
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_more:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090133

    .line 3160
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->web_prev:Landroid/widget/ImageButton;

    .line 3161
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->web_prev:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090132

    .line 3162
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->web_next:Landroid/widget/ImageButton;

    .line 3163
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->web_next:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900f8

    .line 3165
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tab_prev:Landroid/widget/ImageButton;

    .line 3166
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tab_prev:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900f7

    .line 3167
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tab_next:Landroid/widget/ImageButton;

    .line 3168
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tab_next:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09006a

    .line 3170
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_tabView:Landroid/view/View;

    const v1, 0x7f090064

    .line 3171
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_saveView:Landroid/view/View;

    const v1, 0x7f090068

    .line 3172
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_shareView:Landroid/view/View;

    const v1, 0x7f090060

    .line 3173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_moreView:Landroid/view/View;

    const v1, 0x7f09004c

    .line 3175
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->dialogTitle:Landroid/widget/TextView;

    const v1, 0x7f09011d

    .line 3177
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_new_tabOpen:Landroid/widget/LinearLayout;

    .line 3178
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_new_tabOpen:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090118

    .line 3179
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_closeTab:Landroid/widget/LinearLayout;

    .line 3180
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_closeTab:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09012b

    .line 3181
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_tabPreview:Landroid/widget/RelativeLayout;

    .line 3182
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_tabPreview:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090121

    .line 3183
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_quit:Landroid/widget/LinearLayout;

    .line 3184
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_quit:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09012a

    .line 3186
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_shareScreenshot:Landroid/widget/LinearLayout;

    .line 3187
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_shareScreenshot:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090129

    .line 3188
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_shareLink:Landroid/widget/LinearLayout;

    .line 3189
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_shareLink:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09011c

    .line 3190
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_menu_save_as:Landroid/widget/LinearLayout;

    .line 3191
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_menu_save_as:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09011e

    .line 3192
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_openWith:Landroid/widget/LinearLayout;

    .line 3193
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_openWith:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090125

    .line 3195
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveScreenshot:Landroid/widget/LinearLayout;

    .line 3196
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveScreenshot:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090123

    .line 3197
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveBookmark:Landroid/widget/LinearLayout;

    .line 3198
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveBookmark:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090117

    .line 3199
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv3_menu_save_as:Landroid/widget/LinearLayout;

    .line 3200
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv3_menu_save_as:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090126

    .line 3201
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveStart:Landroid/widget/LinearLayout;

    .line 3202
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveStart:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090124

    .line 3203
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveLogin:Landroid/widget/LinearLayout;

    .line 3204
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveLogin:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090122

    .line 3206
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_relayout:Landroid/widget/LinearLayout;

    .line 3207
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_relayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090127

    .line 3208
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_searchSite:Landroid/widget/LinearLayout;

    .line 3209
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_searchSite:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090128

    .line 3210
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_settings:Landroid/widget/LinearLayout;

    .line 3211
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_settings:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090119

    .line 3212
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_delete:Landroid/widget/LinearLayout;

    .line 3213
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_delete:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09011b

    .line 3214
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_help:Landroid/widget/LinearLayout;

    .line 3215
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_help:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09011a

    .line 3216
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_download:Landroid/widget/LinearLayout;

    .line 3217
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_download:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09011f

    .line 3218
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_placeHolder:Landroid/widget/LinearLayout;

    const v1, 0x7f090120

    .line 3219
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_placeHolder_2:Landroid/widget/LinearLayout;

    .line 3221
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateOverflow()V

    .line 3223
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 3224
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    const/4 v0, 0x1

    return v0
.end method

.method private showSearchPanel()V
    .locals 2

    .line 3091
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showOmnibox()V

    .line 3092
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omnibox:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3093
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omniboxTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3094
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchPanel:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3095
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->searchBox:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->showSoftInput(Landroid/widget/EditText;)V

    return-void
.end method

.method private showSoftInput(Landroid/widget/EditText;)V
    .locals 4

    .line 3033
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$78;

    invoke-direct {v1, p0, p1}, Lde/baumann/browser/Activity/BrowserActivity$78;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showSwitcher()V
    .locals 17

    move-object/from16 v0, p0

    .line 2016
    new-instance v1, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {v1, v0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    const v1, 0x7f0b0036

    const/4 v2, 0x0

    .line 2017
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900ef

    .line 2019
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const v3, 0x7f090080

    .line 2020
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v4, 0x7f0900ea

    .line 2021
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const v5, 0x7f09007e

    .line 2022
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    const v6, 0x7f0900ed

    .line 2023
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    const v7, 0x7f0900f1

    .line 2024
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    const v8, 0x7f0900eb

    .line 2025
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    const v9, 0x7f09007f

    .line 2026
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    const v10, 0x7f0900f0

    .line 2027
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    const v11, 0x7f0900ee

    .line 2028
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    const v12, 0x7f0900ec

    .line 2029
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 2031
    new-instance v13, Lde/baumann/browser/Browser/Javascript;

    invoke-direct {v13, v0}, Lde/baumann/browser/Browser/Javascript;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lde/baumann/browser/Activity/BrowserActivity;->javaHosts:Lde/baumann/browser/Browser/Javascript;

    .line 2032
    invoke-direct/range {p0 .. p0}, Lde/baumann/browser/Activity/BrowserActivity;->getJavaHosts()Lde/baumann/browser/Browser/Javascript;

    move-result-object v13

    iput-object v13, v0, Lde/baumann/browser/Activity/BrowserActivity;->javaHosts:Lde/baumann/browser/Browser/Javascript;

    .line 2034
    new-instance v13, Lde/baumann/browser/Browser/Cookie;

    invoke-direct {v13, v0}, Lde/baumann/browser/Browser/Cookie;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lde/baumann/browser/Activity/BrowserActivity;->cookieHosts:Lde/baumann/browser/Browser/Cookie;

    .line 2035
    invoke-direct/range {p0 .. p0}, Lde/baumann/browser/Activity/BrowserActivity;->getCookieHosts()Lde/baumann/browser/Browser/Cookie;

    move-result-object v13

    iput-object v13, v0, Lde/baumann/browser/Activity/BrowserActivity;->cookieHosts:Lde/baumann/browser/Browser/Cookie;

    .line 2037
    new-instance v13, Lde/baumann/browser/Browser/AdBlock;

    invoke-direct {v13, v0}, Lde/baumann/browser/Browser/AdBlock;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lde/baumann/browser/Activity/BrowserActivity;->adBlock:Lde/baumann/browser/Browser/AdBlock;

    .line 2038
    invoke-direct/range {p0 .. p0}, Lde/baumann/browser/Activity/BrowserActivity;->getAdBlock()Lde/baumann/browser/Browser/AdBlock;

    move-result-object v13

    iput-object v13, v0, Lde/baumann/browser/Activity/BrowserActivity;->adBlock:Lde/baumann/browser/Browser/AdBlock;

    .line 2040
    iget-object v13, v0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    check-cast v13, Lde/baumann/browser/View/NinjaWebView;

    iput-object v13, v0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    .line 2042
    iget-object v13, v0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v13}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object v13

    .line 2044
    iget-object v14, v0, Lde/baumann/browser/Activity/BrowserActivity;->javaHosts:Lde/baumann/browser/Browser/Javascript;

    invoke-virtual {v14, v13}, Lde/baumann/browser/Browser/Javascript;->isWhite(Ljava/lang/String;)Z

    move-result v14

    const v15, 0x7f08005d

    if-eqz v14, :cond_0

    .line 2045
    invoke-virtual {v3, v15}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const v14, 0x7f08006f

    .line 2047
    invoke-virtual {v3, v14}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2050
    :goto_0
    iget-object v14, v0, Lde/baumann/browser/Activity/BrowserActivity;->cookieHosts:Lde/baumann/browser/Browser/Cookie;

    invoke-virtual {v14, v13}, Lde/baumann/browser/Browser/Cookie;->isWhite(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2051
    invoke-virtual {v9, v15}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const v14, 0x7f08006f

    .line 2053
    invoke-virtual {v9, v14}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2056
    :goto_1
    iget-object v14, v0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const v15, 0x7f0e00dc

    invoke-virtual {v0, v15}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v1

    const/4 v1, 0x1

    invoke-interface {v14, v15, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_2

    .line 2057
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 2059
    :cond_2
    invoke-virtual {v2, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2062
    :goto_2
    new-instance v14, Lde/baumann/browser/Activity/BrowserActivity$45;

    invoke-direct {v14, v0, v3, v13}, Lde/baumann/browser/Activity/BrowserActivity$45;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/ImageButton;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2075
    new-instance v3, Lde/baumann/browser/Activity/BrowserActivity$46;

    invoke-direct {v3, v0, v9, v13}, Lde/baumann/browser/Activity/BrowserActivity$46;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/ImageButton;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2088
    new-instance v3, Lde/baumann/browser/Activity/BrowserActivity$47;

    invoke-direct {v3, v0}, Lde/baumann/browser/Activity/BrowserActivity$47;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2102
    iget-object v2, v0, Lde/baumann/browser/Activity/BrowserActivity;->adBlock:Lde/baumann/browser/Browser/AdBlock;

    invoke-virtual {v2, v13}, Lde/baumann/browser/Browser/AdBlock;->isWhite(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f08005d

    .line 2103
    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3

    :cond_3
    const v2, 0x7f08006f

    .line 2105
    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2108
    :goto_3
    iget-object v2, v0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const v3, 0x7f0e00d4

    invoke-virtual {v0, v3}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2109
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    .line 2111
    :cond_4
    invoke-virtual {v4, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2114
    :goto_4
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$48;

    invoke-direct {v2, v0, v5, v13}, Lde/baumann/browser/Activity/BrowserActivity$48;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/ImageButton;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2127
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$49;

    invoke-direct {v2, v0}, Lde/baumann/browser/Activity/BrowserActivity$49;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2140
    iget-object v2, v0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const v3, 0x7f0e00db

    invoke-virtual {v0, v3}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2141
    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 2143
    :cond_5
    invoke-virtual {v6, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2146
    :goto_5
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$50;

    invoke-direct {v2, v0}, Lde/baumann/browser/Activity/BrowserActivity$50;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2157
    iget-object v2, v0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "sp_remote"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2158
    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_6

    .line 2160
    :cond_6
    invoke-virtual {v7, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2163
    :goto_6
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$51;

    invoke-direct {v2, v0}, Lde/baumann/browser/Activity/BrowserActivity$51;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v7, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2174
    iget-object v2, v0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const v3, 0x7f0e00da

    invoke-virtual {v0, v3}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2175
    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_7

    .line 2177
    :cond_7
    invoke-virtual {v8, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2180
    :goto_7
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$52;

    invoke-direct {v2, v0}, Lde/baumann/browser/Activity/BrowserActivity$52;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2194
    iget-object v2, v0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "saveHistory"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2195
    invoke-virtual {v12, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_8

    .line 2197
    :cond_8
    invoke-virtual {v12, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2200
    :goto_8
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$53;

    invoke-direct {v2, v0}, Lde/baumann/browser/Activity/BrowserActivity$53;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v12, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2211
    iget-object v2, v0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const v3, 0x7f0e00dd

    invoke-virtual {v0, v3}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2212
    invoke-virtual {v10, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_9

    .line 2214
    :cond_9
    invoke-virtual {v10, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2217
    :goto_9
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$54;

    invoke-direct {v2, v0}, Lde/baumann/browser/Activity/BrowserActivity$54;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v10, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2230
    iget-object v2, v0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "sp_invert"

    invoke-interface {v2, v3, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2231
    invoke-virtual {v11, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_a

    .line 2233
    :cond_a
    invoke-virtual {v11, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2236
    :goto_a
    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$55;

    invoke-direct {v1, v0}, Lde/baumann/browser/Activity/BrowserActivity$55;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v11, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f09006f

    move-object/from16 v2, v16

    .line 2249
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2250
    iget-object v3, v0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v4, "sp_fontSize"

    const-string v5, "100"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f09006d

    .line 2252
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v4, 0x7f080095

    .line 2253
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2254
    new-instance v4, Lde/baumann/browser/Activity/BrowserActivity$56;

    invoke-direct {v4, v0, v1}, Lde/baumann/browser/Activity/BrowserActivity$56;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f09006e

    .line 2275
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v4, 0x7f080097

    .line 2276
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2277
    new-instance v4, Lde/baumann/browser/Activity/BrowserActivity$57;

    invoke-direct {v4, v0, v1}, Lde/baumann/browser/Activity/BrowserActivity$57;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090019

    .line 2298
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2299
    new-instance v3, Lde/baumann/browser/Activity/BrowserActivity$58;

    invoke-direct {v3, v0}, Lde/baumann/browser/Activity/BrowserActivity$58;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09000f

    .line 2309
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2310
    new-instance v3, Lde/baumann/browser/Activity/BrowserActivity$59;

    invoke-direct {v3, v0}, Lde/baumann/browser/Activity/BrowserActivity$59;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2317
    iget-object v1, v0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 2318
    iget-object v1, v0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v1}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    return-void
.end method

.method private toast_login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 2323
    :try_start_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->mahEncryptor:Lcom/mobapphome/mahencryptorlib/MAHEncryptor;

    invoke-virtual {v0, p1}, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2324
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->mahEncryptor:Lcom/mobapphome/mahencryptorlib/MAHEncryptor;

    invoke-virtual {v0, p2}, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "clipboard"

    .line 2325
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2328
    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$60;

    invoke-direct {v1, p0, p1, v0}, Lde/baumann/browser/Activity/BrowserActivity$60;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;Landroid/content/ClipboardManager;)V

    .line 2337
    new-instance p1, Lde/baumann/browser/Activity/BrowserActivity$61;

    invoke-direct {p1, p0, p2, v0}, Lde/baumann/browser/Activity/BrowserActivity$61;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;Landroid/content/ClipboardManager;)V

    .line 2346
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "unCopy"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2347
    invoke-virtual {p0, v1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2348
    new-instance p2, Landroid/content/Intent;

    const-string v0, "unCopy"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    const/4 v1, 0x0

    .line 2349
    invoke-static {p0, v1, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 2351
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "pwCopy"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2352
    invoke-virtual {p0, p1, v2}, Lde/baumann/browser/Activity/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2353
    new-instance p1, Landroid/content/Intent;

    const-string v2, "pwCopy"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 2354
    invoke-static {p0, v2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "notification"

    .line 2358
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2361
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const v5, 0x7f0e0025

    if-lt v3, v4, :cond_0

    const-string v3, "browser_not"

    .line 2363
    invoke-virtual {p0, v5}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2364
    new-instance v6, Landroid/app/NotificationChannel;

    const/4 v7, 0x4

    invoke-direct {v6, v3, v4, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 2365
    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 2366
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2369
    :cond_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 2372
    :goto_0
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const v4, 0x7f0e010f

    invoke-virtual {p0, v4}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f080085

    invoke-direct {v3, v6, v4, p2}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object p2

    .line 2373
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const v4, 0x7f0e010e

    invoke-virtual {p0, v4}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4, p1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object p1

    const-string v3, "msg"

    .line 2377
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v3, 0x7f080073

    .line 2378
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 2379
    invoke-virtual {p0, v5}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v3, 0x7f0e010d

    .line 2380
    invoke-virtual {p0, v3}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v3, 0x7f06002a

    .line 2381
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 2382
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 2383
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    new-array v2, v1, [J

    .line 2384
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 2385
    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    .line 2386
    invoke-virtual {p2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 2387
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "notification"

    .line 2389
    invoke-virtual {p0, p2}, Lde/baumann/browser/Activity/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    .line 2391
    invoke-virtual {p2, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2394
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const p1, 0x7f0e00f6

    .line 2395
    invoke-static {p0, p1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    :goto_1
    return-void
.end method

.method private declared-synchronized updateAlbum(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 2512
    :try_start_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2513
    monitor-exit p0

    return-void

    .line 2516
    :cond_0
    :try_start_1
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v0, v0, Lde/baumann/browser/View/NinjaWebView;

    if-eqz v0, :cond_1

    .line 2517
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    check-cast v0, Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0, p1}, Lde/baumann/browser/View/NinjaWebView;->loadUrl(Ljava/lang/String;)V

    .line 2518
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateOmnibox()V

    goto/16 :goto_0

    .line 2519
    :cond_1
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v0, v0, Lde/baumann/browser/View/NinjaRelativeLayout;

    if-eqz v0, :cond_2

    .line 2520
    new-instance v0, Lde/baumann/browser/View/NinjaWebView;

    invoke-direct {v0, p0}, Lde/baumann/browser/View/NinjaWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    .line 2522
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0, p0}, Lde/baumann/browser/View/NinjaWebView;->setBrowserController(Lde/baumann/browser/Browser/BrowserController;)V

    .line 2523
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Lde/baumann/browser/View/NinjaWebView;->setFlag(I)V

    .line 2524
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    const v1, 0x7f0e0022

    invoke-virtual {p0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/baumann/browser/View/NinjaWebView;->setAlbumTitle(Ljava/lang/String;)V

    .line 2525
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-static {p0, v0}, Lde/baumann/browser/Unit/ViewUnit;->bound(Landroid/content/Context;Landroid/view/View;)V

    .line 2527
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-interface {v1}, Lde/baumann/browser/Browser/AlbumController;->getAlbumView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2528
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-interface {v1}, Lde/baumann/browser/Browser/AlbumController;->deactivate()V

    .line 2529
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-interface {v2}, Lde/baumann/browser/Browser/AlbumController;->getAlbumView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2530
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2532
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v2}, Lde/baumann/browser/View/NinjaWebView;->getAlbumView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2533
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2534
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-static {v1, v0}, Lde/baumann/browser/Browser/BrowserContainer;->set(Lde/baumann/browser/Browser/AlbumController;I)V

    .line 2535
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    .line 2536
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->activate()V

    .line 2537
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0, p1}, Lde/baumann/browser/View/NinjaWebView;->loadUrl(Ljava/lang/String;)V

    .line 2538
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateOmnibox()V

    goto :goto_0

    :cond_2
    const p1, 0x7f0e00fd

    .line 2541
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2543
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2511
    monitor-exit p0

    throw p1
.end method

.method private updateOmnibox()V
    .locals 4

    .line 2637
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->initRendering(Landroid/view/View;)V

    .line 2638
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omniboxTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-interface {v1}, Lde/baumann/browser/Browser/AlbumController;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2640
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-nez v0, :cond_0

    return-void

    .line 2644
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v0, v0, Lde/baumann/browser/View/NinjaRelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2645
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->fab_imageButtonNav:Landroid/support/design/widget/FloatingActionButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    const/16 v0, 0x64

    .line 2646
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->updateProgress(I)V

    .line 2647
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateBookmarks()V

    .line 2648
    invoke-virtual {p0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->updateInputBox(Ljava/lang/String;)V

    goto :goto_0

    .line 2649
    :cond_1
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v0, v0, Lde/baumann/browser/View/NinjaWebView;

    if-eqz v0, :cond_4

    .line 2650
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    check-cast v0, Lde/baumann/browser/View/NinjaWebView;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    .line 2651
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->updateProgress(I)V

    .line 2652
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateBookmarks()V

    .line 2653
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->scrollChange()V

    .line 2654
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2655
    invoke-virtual {p0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->updateInputBox(Ljava/lang/String;)V

    goto :goto_0

    .line 2656
    :cond_2
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2657
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->updateInputBox(Ljava/lang/String;)V

    goto :goto_0

    .line 2659
    :cond_3
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->updateInputBox(Ljava/lang/String;)V

    .line 2662
    :cond_4
    :goto_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$67;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$67;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    iget v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->shortAnimTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateOverflow()V
    .locals 6

    .line 3100
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v0, v0, Lde/baumann/browser/View/NinjaRelativeLayout;

    if-eqz v0, :cond_0

    .line 3101
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_shareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3102
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_saveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3103
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->web_next:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3104
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->web_prev:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3105
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showOmnibox()V

    .line 3106
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->dialogTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-interface {v3}, Lde/baumann/browser/Browser/AlbumController;->getAlbumTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3107
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v0, v0, Lde/baumann/browser/View/NinjaWebView;

    if-eqz v0, :cond_3

    .line 3108
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_shareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3109
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_saveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3111
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->canGoBack()Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    .line 3112
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->web_prev:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 3114
    :cond_1
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->web_prev:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3117
    :goto_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3118
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->web_next:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 3120
    :cond_2
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->web_next:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3123
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lde/baumann/browser/Activity/BrowserActivity$79;

    invoke-direct {v3, p0}, Lde/baumann/browser/Activity/BrowserActivity$79;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3133
    :cond_3
    :goto_2
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-eqz v0, :cond_5

    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->size()I

    move-result v0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_4

    goto :goto_3

    .line 3137
    :cond_4
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->tab_next:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3138
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->tab_prev:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4

    .line 3134
    :cond_5
    :goto_3
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->tab_next:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3135
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->tab_prev:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method private updateRefresh(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2710
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->omniboxRefresh:Landroid/widget/ImageButton;

    const v0, 0x7f08006e

    invoke-static {p0, v0}, Lde/baumann/browser/Unit/ViewUnit;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2712
    :cond_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of p1, p1, Lde/baumann/browser/View/NinjaWebView;

    const v0, 0x7f080072

    if-eqz p1, :cond_2

    .line 2714
    :try_start_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2715
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->omniboxRefresh:Landroid/widget/ImageButton;

    invoke-static {p0, v0}, Lde/baumann/browser/Unit/ViewUnit;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2717
    :cond_1
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->omniboxRefresh:Landroid/widget/ImageButton;

    const v1, 0x7f080074

    invoke-static {p0, v1}, Lde/baumann/browser/Unit/ViewUnit;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2720
    :catch_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->omniboxRefresh:Landroid/widget/ImageButton;

    invoke-static {p0, v0}, Lde/baumann/browser/Unit/ViewUnit;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2722
    :cond_2
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of p1, p1, Lde/baumann/browser/View/NinjaRelativeLayout;

    if-eqz p1, :cond_3

    .line 2723
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->omniboxRefresh:Landroid/widget/ImageButton;

    invoke-static {p0, v0}, Lde/baumann/browser/Unit/ViewUnit;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 524
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 800
    new-instance v0, Lde/baumann/browser/Database/RecordAction;

    invoke-direct {v0, p0}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    .line 802
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v1, v1, Lde/baumann/browser/View/NinjaRelativeLayout;

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    check-cast v1, Lde/baumann/browser/View/NinjaRelativeLayout;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaRelativeLayout:Lde/baumann/browser/View/NinjaRelativeLayout;

    goto :goto_0

    .line 804
    :cond_0
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v1, v1, Lde/baumann/browser/View/NinjaWebView;

    if-eqz v1, :cond_1

    .line 805
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    check-cast v1, Lde/baumann/browser/View/NinjaWebView;

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    .line 807
    :try_start_0
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v1}, Lde/baumann/browser/View/NinjaWebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->title:Ljava/lang/String;

    .line 808
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v1}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 810
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 814
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const v1, 0x7f09000f

    const v2, 0x7f090019

    const v3, 0x7f09004b

    const v4, 0x7f0b002b

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_1

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    const/4 v0, 0x4

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    .line 1296
    :sswitch_0
    iget p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->start_tab:I

    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->addAlbum(I)V

    goto/16 :goto_3

    .line 1142
    :sswitch_1
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_new_tabOpen:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1143
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_closeTab:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1144
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_tabPreview:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1145
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_quit:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1147
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_shareScreenshot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1148
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_shareLink:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1149
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_menu_save_as:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1150
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_openWith:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1152
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveScreenshot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1153
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveBookmark:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1154
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv3_menu_save_as:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1155
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveStart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1156
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveLogin:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1158
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_tabView:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1159
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_saveView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_shareView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1161
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_moreView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_relayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1164
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_searchSite:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1165
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_placeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1166
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_placeHolder_2:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1167
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_settings:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1168
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_delete:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1169
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_help:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1170
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_download:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 1174
    :sswitch_2
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_new_tabOpen:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1175
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_closeTab:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1176
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_tabPreview:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1177
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_quit:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1179
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_shareScreenshot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1180
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_shareLink:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1181
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_menu_save_as:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1182
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_openWith:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1184
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveScreenshot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1185
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveBookmark:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1186
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv3_menu_save_as:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1187
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveStart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1188
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveLogin:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1190
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_tabView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_saveView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1192
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_shareView:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_moreView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1195
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_relayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1196
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_searchSite:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1197
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_placeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1198
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_placeHolder_2:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1199
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_settings:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1200
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_delete:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1201
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_help:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1202
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_download:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 1206
    :sswitch_3
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_new_tabOpen:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1207
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_closeTab:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1208
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_tabPreview:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1209
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_quit:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1211
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_shareScreenshot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1212
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_shareLink:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1213
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_menu_save_as:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1214
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_openWith:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1216
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveScreenshot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1217
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveBookmark:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1218
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv3_menu_save_as:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1219
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveStart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1220
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveLogin:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1222
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_relayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1223
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_searchSite:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1225
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_tabView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_saveView:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_shareView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1228
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_moreView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_placeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1231
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_placeHolder_2:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1232
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_settings:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1233
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_delete:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1234
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_help:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1235
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_download:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 1239
    :sswitch_4
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_new_tabOpen:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1240
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_closeTab:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1241
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_tabPreview:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1242
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_quit:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1244
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_shareScreenshot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1245
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_shareLink:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1246
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_menu_save_as:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1247
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_openWith:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1249
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveScreenshot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1250
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveBookmark:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1251
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv3_menu_save_as:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1252
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveStart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1254
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_tabView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1255
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_saveView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1256
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_shareView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1257
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->floatButton_moreView:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_settings:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1260
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_delete:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1262
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of p1, p1, Lde/baumann/browser/View/NinjaRelativeLayout;

    if-eqz p1, :cond_3

    .line 1263
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_searchSite:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1264
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveLogin:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1265
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_help:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1266
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_download:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1268
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaRelativeLayout:Lde/baumann/browser/View/NinjaRelativeLayout;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaRelativeLayout;->getFlag()I

    move-result p1

    const/16 v0, 0x105

    if-eq p1, v0, :cond_2

    .line 1269
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_relayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1270
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_placeHolder_2:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 1272
    :cond_2
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_relayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1273
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_placeHolder_2:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 1275
    :cond_3
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of p1, p1, Lde/baumann/browser/View/NinjaWebView;

    if-eqz p1, :cond_f

    .line 1276
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_searchSite:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1277
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_relayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1278
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_placeHolder_2:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1279
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_delete:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1280
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_saveLogin:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1281
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_help:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1282
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv_download:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 831
    :pswitch_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 832
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->goBack()V

    .line 833
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateOverflow()V

    goto/16 :goto_3

    .line 835
    :cond_4
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 836
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->removeAlbum(Lde/baumann/browser/Browser/AlbumController;)V

    goto/16 :goto_3

    .line 841
    :pswitch_1
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 842
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->goForward()V

    .line 843
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateOverflow()V

    goto/16 :goto_3

    .line 845
    :cond_5
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    const p1, 0x7f0e0112

    .line 846
    invoke-static {p0, p1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    goto/16 :goto_3

    .line 861
    :pswitch_2
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 862
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showOmnibox()V

    .line 863
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lde/baumann/browser/Activity/BrowserActivity$13;

    invoke-direct {v0, p0}, Lde/baumann/browser/Activity/BrowserActivity$13;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 877
    :pswitch_3
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 878
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "screenshot"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 879
    new-instance p1, Lde/baumann/browser/Task/ScreenshotTask;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-direct {p1, p0, v0}, Lde/baumann/browser/Task/ScreenshotTask;-><init>(Landroid/content/Context;Lde/baumann/browser/View/NinjaWebView;)V

    new-array v0, v7, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lde/baumann/browser/Task/ScreenshotTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3

    .line 883
    :pswitch_4
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 884
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->prepareRecord()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f0e010a

    .line 885
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 887
    :cond_6
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->title:Ljava/lang/String;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->url:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lde/baumann/browser/Unit/IntentUnit;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1081
    :pswitch_5
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 1082
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lde/baumann/browser/Activity/Settings_Activity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1083
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1070
    :pswitch_6
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 1071
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->inputBox:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->hideSoftInput(Landroid/widget/EditText;)V

    .line 1072
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showSearchPanel()V

    goto/16 :goto_3

    .line 925
    :pswitch_7
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 926
    invoke-virtual {v0, v6}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 927
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lde/baumann/browser/Database/RecordAction;->checkGridItem(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f0e00eb

    .line 928
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 930
    :cond_7
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    iget v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->dimen156dp:F

    iget v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->dimen117dp:F

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2, v3}, Lde/baumann/browser/Unit/ViewUnit;->capture(Landroid/view/View;FFLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 932
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->listGrid()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 933
    new-instance v3, Lde/baumann/browser/View/GridItem;

    iget-object v4, p0, Lde/baumann/browser/Activity/BrowserActivity;->title:Ljava/lang/String;

    iget-object v5, p0, Lde/baumann/browser/Activity/BrowserActivity;->url:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1, v2}, Lde/baumann/browser/View/GridItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 935
    invoke-static {p0, p1, v1}, Lde/baumann/browser/Unit/BrowserUnit;->bitmap2File(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v0, v3}, Lde/baumann/browser/Database/RecordAction;->addGridItem(Lde/baumann/browser/View/GridItem;)Z

    move-result p1

    if-eqz p1, :cond_8

    const p1, 0x7f0e00e9

    .line 936
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const p1, 0x7f0e00e8

    .line 938
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 941
    :goto_1
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->close()V

    goto/16 :goto_3

    .line 905
    :pswitch_8
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 906
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "screenshot"

    invoke-interface {p1, v0, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 907
    new-instance p1, Lde/baumann/browser/Task/ScreenshotTask;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-direct {p1, p0, v0}, Lde/baumann/browser/Task/ScreenshotTask;-><init>(Landroid/content/Context;Lde/baumann/browser/View/NinjaWebView;)V

    new-array v0, v7, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lde/baumann/browser/Task/ScreenshotTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3

    .line 945
    :pswitch_9
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 946
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0030

    .line 947
    invoke-static {p0, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900b5

    .line 949
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0900b6

    .line 950
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0900b7

    .line 951
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 953
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lde/baumann/browser/Activity/BrowserActivity$14;

    invoke-direct {v5, p0, v1}, Lde/baumann/browser/Activity/BrowserActivity$14;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 960
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0e0058

    .line 961
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0e0026

    .line 962
    new-instance v4, Lde/baumann/browser/Activity/BrowserActivity$15;

    invoke-direct {v4, p0, v1, v2, v3}, Lde/baumann/browser/Activity/BrowserActivity$15;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0e0023

    .line 989
    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$16;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$16;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 995
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 996
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_3

    .line 911
    :pswitch_a
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 912
    invoke-virtual {v0, v6}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 913
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lde/baumann/browser/Database/RecordAction;->checkBookmark(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f0e00f5

    .line 914
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 916
    :cond_9
    new-instance p1, Lde/baumann/browser/Database/Record;

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->title:Ljava/lang/String;

    iget-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->url:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {p1, v1, v2, v3, v4}, Lde/baumann/browser/Database/Record;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, p1}, Lde/baumann/browser/Database/RecordAction;->addBookmark(Lde/baumann/browser/Database/Record;)V

    const p1, 0x7f0e00e7

    .line 917
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 919
    :goto_2
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->close()V

    .line 920
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateBookmarks()V

    .line 921
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateAutoComplete()V

    goto/16 :goto_3

    .line 1002
    :pswitch_b
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 1003
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->omnibox:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1004
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->relayoutOK:Landroid/widget/Button;

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1006
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaRelativeLayout:Lde/baumann/browser/View/NinjaRelativeLayout;

    const v0, 0x7f090078

    invoke-virtual {p1, v0}, Lde/baumann/browser/View/NinjaRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/askerov/dynamicgrid/DynamicGridView;

    .line 1007
    invoke-virtual {p1}, Lorg/askerov/dynamicgrid/DynamicGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lde/baumann/browser/View/GridAdapter;

    invoke-virtual {v0}, Lde/baumann/browser/View/GridAdapter;->getList()Ljava/util/List;

    move-result-object v0

    .line 1009
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->relayoutOK:Landroid/widget/Button;

    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$17;

    invoke-direct {v2, p0}, Lde/baumann/browser/Activity/BrowserActivity$17;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1017
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->relayoutOK:Landroid/widget/Button;

    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$18;

    invoke-direct {v2, p0, p1, v0}, Lde/baumann/browser/Activity/BrowserActivity$18;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lorg/askerov/dynamicgrid/DynamicGridView;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$19;

    invoke-direct {v1, p0, v0}, Lde/baumann/browser/Activity/BrowserActivity$19;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lorg/askerov/dynamicgrid/DynamicGridView;->setOnDragListener(Lorg/askerov/dynamicgrid/DynamicGridView$OnDragListener;)V

    .line 1066
    invoke-virtual {p1}, Lorg/askerov/dynamicgrid/DynamicGridView;->startEditMode()V

    goto/16 :goto_3

    .line 872
    :pswitch_c
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 873
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->doubleTapsQuit()V

    goto/16 :goto_3

    .line 897
    :pswitch_d
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 898
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v0, 0x7f0e005a

    .line 900
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 901
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 851
    :pswitch_e
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 852
    iget p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->start_tab:I

    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->addAlbum(I)V

    goto/16 :goto_3

    .line 892
    :pswitch_f
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 893
    invoke-direct {p0, v6}, Lde/baumann/browser/Activity/BrowserActivity;->printPDF(Z)V

    goto/16 :goto_3

    .line 1132
    :pswitch_10
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 1133
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showHelpDialog()V

    goto/16 :goto_3

    .line 1137
    :pswitch_11
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 1138
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1087
    :pswitch_12
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 1089
    new-instance p1, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p1, p0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    .line 1090
    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1091
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0e004a

    .line 1092
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1093
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1094
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$20;

    invoke-direct {v2, p0}, Lde/baumann/browser/Activity/BrowserActivity$20;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1119
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1120
    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$21;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$21;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1126
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 1127
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    goto/16 :goto_3

    .line 856
    :pswitch_13
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 857
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->removeAlbum(Lde/baumann/browser/Browser/AlbumController;)V

    goto/16 :goto_3

    .line 1076
    :pswitch_14
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 1077
    invoke-direct {p0, v7}, Lde/baumann/browser/Activity/BrowserActivity;->printPDF(Z)V

    goto/16 :goto_3

    .line 819
    :pswitch_15
    invoke-direct {p0, v7}, Lde/baumann/browser/Activity/BrowserActivity;->nextAlbumController(Z)Lde/baumann/browser/Browser/AlbumController;

    move-result-object p1

    .line 820
    invoke-virtual {p0, p1, v7}, Lde/baumann/browser/Activity/BrowserActivity;->showAlbum(Lde/baumann/browser/Browser/AlbumController;Z)V

    .line 821
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateOverflow()V

    goto/16 :goto_3

    .line 825
    :pswitch_16
    invoke-direct {p0, v6}, Lde/baumann/browser/Activity/BrowserActivity;->nextAlbumController(Z)Lde/baumann/browser/Browser/AlbumController;

    move-result-object p1

    .line 826
    invoke-virtual {p0, p1, v7}, Lde/baumann/browser/Activity/BrowserActivity;->showAlbum(Lde/baumann/browser/Browser/AlbumController;Z)V

    .line 827
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateOverflow()V

    goto/16 :goto_3

    .line 1300
    :pswitch_17
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    const v0, 0x7f0e0107

    if-nez p1, :cond_a

    .line 1301
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1305
    :cond_a
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of p1, p1, Lde/baumann/browser/View/NinjaWebView;

    if-eqz p1, :cond_d

    .line 1306
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    check-cast p1, Lde/baumann/browser/View/NinjaWebView;

    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    .line 1307
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->stopLoading()V

    .line 1308
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->isLoadFinish()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1310
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->url:Ljava/lang/String;

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1311
    new-instance p1, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p1, p0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    .line 1312
    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1313
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0e0110

    .line 1314
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1315
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1316
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$22;

    invoke-direct {v2, p0}, Lde/baumann/browser/Activity/BrowserActivity$22;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1323
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1324
    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$23;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$23;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1331
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 1332
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    goto :goto_3

    .line 1334
    :cond_b
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->reload()V

    goto :goto_3

    .line 1339
    :cond_c
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaWebView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->stopLoading()V

    goto :goto_3

    .line 1341
    :cond_d
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of p1, p1, Lde/baumann/browser/View/NinjaRelativeLayout;

    if-eqz p1, :cond_e

    .line 1342
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    check-cast p1, Lde/baumann/browser/View/NinjaRelativeLayout;

    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaRelativeLayout:Lde/baumann/browser/View/NinjaRelativeLayout;

    .line 1343
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaRelativeLayout:Lde/baumann/browser/View/NinjaRelativeLayout;

    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->initHomeGrid(Lde/baumann/browser/View/NinjaRelativeLayout;)V

    goto :goto_3

    .line 1345
    :cond_e
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 1350
    :pswitch_18
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showOverflow()Z

    goto :goto_3

    .line 1292
    :pswitch_19
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->doubleTapsHide()V

    :cond_f
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090057
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0900a7
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0900f7
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f090117
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7f090121
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x7f090132
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x7f09005f -> :sswitch_4
        0x7f090062 -> :sswitch_3
        0x7f090066 -> :sswitch_2
        0x7f090069 -> :sswitch_1
        0x7f0900f4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 688
    invoke-static {p0}, Lde/baumann/browser/Unit/ViewUnit;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lde/baumann/browser/Unit/ViewUnit;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->dimen108dp:F

    sub-float/2addr v0, v1

    iget v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->dimen16dp:F

    sub-float/2addr v0, v1

    .line 689
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->inputBox:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->hideSoftInput(Landroid/widget/EditText;)V

    .line 690
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->hideSearchPanel()V

    .line 691
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherPanel:Lde/baumann/browser/View/SwitcherPanel;

    invoke-virtual {v1}, Lde/baumann/browser/View/SwitcherPanel;->expanded()V

    .line 692
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherPanel:Lde/baumann/browser/View/SwitcherPanel;

    invoke-virtual {v1, v0}, Lde/baumann/browser/View/SwitcherPanel;->setCoverHeight(F)V

    .line 694
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$10;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$10;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    iget v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->shortAnimTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 703
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 322
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 324
    invoke-static {}, Landroid/webkit/WebView;->enableSlowWholeDocumentDraw()V

    .line 325
    new-instance p1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 326
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object p1

    invoke-static {p1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 328
    invoke-static {p0}, Lde/baumann/browser/Unit/HelperUnit;->grantPermissionsStorage(Landroid/app/Activity;)V

    .line 329
    invoke-static {p0}, Lde/baumann/browser/Unit/HelperUnit;->setTheme(Landroid/content/Context;)V

    const p1, 0x7f0b0039

    .line 331
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->setContentView(I)V

    .line 333
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    .line 334
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v0, "start_tab"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :pswitch_1
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :pswitch_2
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :pswitch_3
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/16 v0, 0x102

    packed-switch p1, :pswitch_data_1

    const/16 p1, 0x101

    .line 348
    iput p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->start_tab:I

    goto :goto_2

    :pswitch_4
    const/16 p1, 0x100

    .line 345
    iput p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->start_tab:I

    goto :goto_2

    :pswitch_5
    const/16 p1, 0x105

    .line 342
    iput p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->start_tab:I

    goto :goto_2

    .line 339
    :pswitch_6
    iput v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->start_tab:I

    goto :goto_2

    .line 336
    :pswitch_7
    iput v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->start_tab:I

    .line 352
    :goto_2
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v0, "saved_key_ok"

    const-string v3, "no"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "no"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!\u00a7$%&/()=?;:_-.,+#*<>"

    .line 353
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/4 v4, 0x0

    :goto_3
    const/16 v5, 0x19

    if-ge v4, v5, :cond_1

    .line 357
    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v5, p1, v5

    .line 358
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 361
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "zh"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 362
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const v3, 0x7f0e00df

    invoke-virtual {p0, v3}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 365
    :cond_2
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v3, "saved_key"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 366
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "saved_key_ok"

    const-string v3, "yes"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 367
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const v0, 0x7f0e00dd

    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 370
    :cond_3
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "restart_changed"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 373
    :try_start_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v0, "saved_key"

    const-string v3, ""

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobapphome/mahencryptorlib/MAHEncryptor;->newInstance(Ljava/lang/String;)Lcom/mobapphome/mahencryptorlib/MAHEncryptor;

    move-result-object p1

    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->mahEncryptor:Lcom/mobapphome/mahencryptorlib/MAHEncryptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 375
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    const p1, 0x7f09008f

    .line 378
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    .line 379
    iput-boolean v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->create:Z

    .line 380
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x10e0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->shortAnimTime:I

    const p1, 0x7f0900f3

    .line 382
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lde/baumann/browser/View/SwitcherPanel;

    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherPanel:Lde/baumann/browser/View/SwitcherPanel;

    .line 383
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherPanel:Lde/baumann/browser/View/SwitcherPanel;

    invoke-virtual {p1}, Lde/baumann/browser/View/SwitcherPanel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lde/baumann/browser/Activity/BrowserActivity$1;

    invoke-direct {v0, p0}, Lde/baumann/browser/Activity/BrowserActivity$1;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 396
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherPanel:Lde/baumann/browser/View/SwitcherPanel;

    new-instance v0, Lde/baumann/browser/Activity/BrowserActivity$2;

    invoke-direct {v0, p0}, Lde/baumann/browser/Activity/BrowserActivity$2;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {p1, v0}, Lde/baumann/browser/View/SwitcherPanel;->setStatusListener(Lde/baumann/browser/View/SwitcherPanel$StatusListener;)V

    .line 406
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07008f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->dimen156dp:F

    .line 407
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07008e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->dimen144dp:F

    .line 408
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070089

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->dimen117dp:F

    .line 409
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070088

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->dimen108dp:F

    .line 410
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07008b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->dimen16dp:F

    .line 412
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->initSwitcherView()V

    .line 413
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->initOmnibox()V

    .line 414
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->initSearchPanel()V

    const p1, 0x7f090093

    .line 415
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->relayoutOK:Landroid/widget/Button;

    .line 417
    new-instance p1, Lde/baumann/browser/Browser/AdBlock;

    invoke-direct {p1, p0}, Lde/baumann/browser/Browser/AdBlock;-><init>(Landroid/content/Context;)V

    .line 418
    new-instance p1, Lde/baumann/browser/Browser/Javascript;

    invoke-direct {p1, p0}, Lde/baumann/browser/Browser/Javascript;-><init>(Landroid/content/Context;)V

    .line 421
    :try_start_1
    new-instance p1, Lde/baumann/browser/Browser/Cookie;

    invoke-direct {p1, p0}, Lde/baumann/browser/Browser/Cookie;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 423
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "Ninja4.db"

    .line 424
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->deleteDatabase(Ljava/lang/String;)Z

    .line 425
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->recreate()V

    .line 428
    :goto_5
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->dispatchIntent(Landroid/content/Intent;)V

    .line 433
    :try_start_2
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 434
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "oldVersionName"

    const-string v2, "0.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 439
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    const v0, 0x7f0b0035

    const/4 v1, 0x0

    .line 440
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09004c

    .line 442
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e002a

    .line 443
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f09004b

    .line 445
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e0029

    .line 446
    invoke-virtual {p0, v2}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/baumann/browser/Unit/HelperUnit;->textSpannable(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v1, 0x7f090061

    .line 449
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 450
    new-instance v2, Lde/baumann/browser/Activity/BrowserActivity$3;

    invoke-direct {v2, p0, p1}, Lde/baumann/browser/Activity/BrowserActivity$3;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09005e

    .line 458
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 459
    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$4;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$4;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090065

    .line 466
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 467
    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$5;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$5;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 477
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->show()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    .line 480
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 483
    :cond_4
    :goto_6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lde/baumann/browser/Activity/BrowserActivity$6;

    invoke-direct {v0, p0}, Lde/baumann/browser/Activity/BrowserActivity$6;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 489
    new-instance p1, Lde/baumann/browser/Activity/BrowserActivity$7;

    invoke-direct {p1, p0}, Lde/baumann/browser/Activity/BrowserActivity$7;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->downloadReceiver:Landroid/content/BroadcastReceiver;

    .line 518
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->downloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateView(Landroid/webkit/WebView;Landroid/os/Message;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 2745
    :cond_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherPanel:Lde/baumann/browser/View/SwitcherPanel;

    invoke-virtual {p1}, Lde/baumann/browser/View/SwitcherPanel;->collapsed()V

    .line 2746
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lde/baumann/browser/Activity/BrowserActivity$69;

    invoke-direct {v0, p0, p2}, Lde/baumann/browser/Activity/BrowserActivity$69;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/os/Message;)V

    iget p2, p0, Lde/baumann/browser/Activity/BrowserActivity;->shortAnimTime:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 661
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sp_clearIndexedDB"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    invoke-static {p0}, Lde/baumann/browser/Unit/BrowserUnit;->clearIndexedDB(Landroid/content/Context;)V

    .line 666
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/baumann/browser/Service/HolderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 667
    invoke-static {v1}, Lde/baumann/browser/Unit/IntentUnit;->setClear(Z)V

    .line 668
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->stopService(Landroid/content/Intent;)Z

    .line 671
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const v3, 0x7f0e00d9

    invoke-virtual {p0, v3}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/baumann/browser/Service/ClearService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 673
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x0

    .line 677
    :cond_1
    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->clear()V

    const/4 v0, 0x0

    .line 678
    invoke-static {v0}, Lde/baumann/browser/Unit/IntentUnit;->setContext(Landroid/content/Context;)V

    .line 679
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    if-eqz v1, :cond_2

    .line 681
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_2
    return-void
.end method

.method public onHideCustomView()Z
    .locals 3

    .line 2801
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->customView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2805
    :cond_0
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 2807
    iget-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->fullscreenHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2810
    :cond_1
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 2811
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2812
    invoke-direct {p0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->setCustomFullscreen(Z)V

    const/4 v0, 0x0

    .line 2814
    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->fullscreenHolder:Landroid/widget/FrameLayout;

    .line 2815
    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->customView:Landroid/view/View;

    .line 2816
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->videoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_2

    .line 2817
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2818
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2819
    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->videoView:Landroid/widget/VideoView;

    .line 2821
    :cond_2
    iget v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->originalOrientation:I

    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->setRequestedOrientation(I)V

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/16 p2, 0x52

    if-eq p1, p2, :cond_0

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    return p2

    :pswitch_0
    return p2

    :pswitch_1
    return p2

    .line 714
    :cond_0
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showOverflow()Z

    move-result p1

    return p1

    .line 717
    :cond_1
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->fullscreenHolder:Landroid/widget/FrameLayout;

    if-nez p1, :cond_3

    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->customView:Landroid/view/View;

    if-nez p1, :cond_3

    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->videoView:Landroid/widget/VideoView;

    if-eqz p1, :cond_2

    goto :goto_0

    .line 720
    :cond_2
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->onKeyCodeBack()Z

    move-result p1

    return p1

    .line 718
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->onHideCustomView()Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPress(Ljava/lang/String;)V
    .locals 4

    .line 2829
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v0, v0, Lde/baumann/browser/View/NinjaWebView;

    if-nez v0, :cond_0

    return-void

    .line 2832
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    check-cast v0, Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 2834
    new-instance v1, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    const v1, 0x7f0b0033

    const/4 v2, 0x0

    .line 2835
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-nez p1, :cond_1

    if-eqz v0, :cond_3

    .line 2837
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_1
    if-nez p1, :cond_2

    .line 2839
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p1

    .line 2841
    :cond_2
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 2842
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    :cond_3
    const v0, 0x7f09004c

    .line 2847
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2848
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090113

    .line 2850
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 2851
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2852
    new-instance v3, Lde/baumann/browser/Activity/BrowserActivity$70;

    invoke-direct {v3, p0, p1}, Lde/baumann/browser/Activity/BrowserActivity$70;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090116

    .line 2861
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2862
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2863
    new-instance v3, Lde/baumann/browser/Activity/BrowserActivity$71;

    invoke-direct {v3, p0, p1}, Lde/baumann/browser/Activity/BrowserActivity$71;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090115

    .line 2875
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2876
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2877
    new-instance v3, Lde/baumann/browser/Activity/BrowserActivity$72;

    invoke-direct {v3, p0, p1}, Lde/baumann/browser/Activity/BrowserActivity$72;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090114

    .line 2888
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2889
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2890
    new-instance v3, Lde/baumann/browser/Activity/BrowserActivity$73;

    invoke-direct {v3, p0, p1}, Lde/baumann/browser/Activity/BrowserActivity$73;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090117

    .line 2898
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv3_menu_save_as:Landroid/widget/LinearLayout;

    .line 2899
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv3_menu_save_as:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2900
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->tv3_menu_save_as:Landroid/widget/LinearLayout;

    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$74;

    invoke-direct {v1, p0, p1}, Lde/baumann/browser/Activity/BrowserActivity$74;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 529
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 530
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 635
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/baumann/browser/Service/HolderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 636
    invoke-static {v1}, Lde/baumann/browser/Unit/IntentUnit;->setClear(Z)V

    .line 637
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->stopService(Landroid/content/Intent;)Z

    .line 639
    iput-boolean v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->create:Z

    .line 640
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->inputBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    .line 641
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v0, v0, Lde/baumann/browser/View/NinjaRelativeLayout;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    check-cast v0, Lde/baumann/browser/View/NinjaRelativeLayout;

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaRelativeLayout:Lde/baumann/browser/View/NinjaRelativeLayout;

    .line 643
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaRelativeLayout:Lde/baumann/browser/View/NinjaRelativeLayout;

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaRelativeLayout;->getFlag()I

    move-result v0

    const/16 v2, 0x102

    if-ne v0, v2, :cond_0

    .line 644
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaRelativeLayout:Lde/baumann/browser/View/NinjaRelativeLayout;

    const v2, 0x7f090078

    invoke-virtual {v0, v2}, Lde/baumann/browser/View/NinjaRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/askerov/dynamicgrid/DynamicGridView;

    .line 645
    invoke-virtual {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    invoke-virtual {v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->stopEditMode()V

    .line 647
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->relayoutOK:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 648
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->omnibox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->ninjaRelativeLayout:Lde/baumann/browser/View/NinjaRelativeLayout;

    invoke-direct {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->initHomeGrid(Lde/baumann/browser/View/NinjaRelativeLayout;)V

    .line 654
    :cond_0
    invoke-static {p0}, Lde/baumann/browser/Unit/IntentUnit;->setContext(Landroid/content/Context;)V

    .line 655
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 535
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 536
    invoke-static {p0}, Lde/baumann/browser/Unit/IntentUnit;->setContext(Landroid/content/Context;)V

    .line 537
    iget-boolean v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->create:Z

    if-eqz v0, :cond_0

    return-void

    .line 541
    :cond_0
    invoke-static {}, Lde/baumann/browser/Unit/IntentUnit;->isDBChange()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 542
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateBookmarks()V

    .line 543
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateAutoComplete()V

    .line 544
    invoke-static {v1}, Lde/baumann/browser/Unit/IntentUnit;->setDBChange(Z)V

    .line 547
    :cond_1
    invoke-static {}, Lde/baumann/browser/Unit/IntentUnit;->isSPChange()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 548
    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/baumann/browser/Browser/AlbumController;

    .line 549
    instance-of v3, v2, Lde/baumann/browser/View/NinjaWebView;

    if-eqz v3, :cond_2

    .line 550
    check-cast v2, Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v2}, Lde/baumann/browser/View/NinjaWebView;->initPreferences()V

    goto :goto_0

    .line 553
    :cond_3
    invoke-static {v1}, Lde/baumann/browser/Unit/IntentUnit;->setSPChange(Z)V

    .line 556
    :cond_4
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "restart_changed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 557
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "restart_changed"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 558
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->finish()V

    .line 561
    :cond_5
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "pdf_create"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 563
    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    const v0, 0x7f0b002b

    const/4 v2, 0x0

    .line 564
    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f09004b

    .line 565
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f090019

    .line 567
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 568
    new-instance v5, Lde/baumann/browser/Activity/BrowserActivity$8;

    invoke-direct {v5, p0}, Lde/baumann/browser/Activity/BrowserActivity$8;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f09000f

    .line 575
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 576
    new-instance v5, Lde/baumann/browser/Activity/BrowserActivity$9;

    invoke-direct {v5, p0}, Lde/baumann/browser/Activity/BrowserActivity$9;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    iget-object v4, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v4, v0}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 584
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v5, "pdf_path"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    iget-object v4, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v5, "pdf_share"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 588
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v5, "pdf_delete"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_6

    .line 589
    iget-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "pdf_delete"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 590
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.SUBJECT"

    .line 591
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    .line 592
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "*/pdf"

    .line 593
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "android.intent.extra.STREAM"

    .line 595
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v0, 0x7f0e0064

    .line 596
    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 597
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v4, "pdf_delete"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 598
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 599
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pdf_create"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 600
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pdf_share"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 601
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pdf_delete"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 603
    :cond_7
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pdf_create"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 604
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pdf_share"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 605
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pdf_delete"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const v0, 0x7f0e0067

    .line 607
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 608
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    goto :goto_1

    :cond_8
    const v0, 0x7f0e00f3

    .line 613
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 614
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->bottomSheetDialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    .line 615
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pdf_share"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 616
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pdf_create"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 617
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pdf_delete"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 621
    :cond_9
    :goto_1
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "delete_screenshot"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 622
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "screenshot_path"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 625
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 626
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "delete_screenshot"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 630
    :cond_a
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->dispatchIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 2759
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->customView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 2760
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    .line 2764
    :cond_1
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->customView:Landroid/view/View;

    .line 2765
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->originalOrientation:I

    .line 2767
    new-instance v0, Lde/baumann/browser/View/FullscreenHolder;

    invoke-direct {v0, p0}, Lde/baumann/browser/View/FullscreenHolder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->fullscreenHolder:Landroid/widget/FrameLayout;

    .line 2768
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->fullscreenHolder:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->customView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2775
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2776
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->fullscreenHolder:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2783
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->customView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 2784
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    check-cast v0, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2785
    invoke-direct {p0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->setCustomFullscreen(Z)V

    .line 2787
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 2788
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    .line 2789
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/VideoView;

    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->videoView:Landroid/widget/VideoView;

    .line 2790
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->videoView:Landroid/widget/VideoView;

    new-instance v0, Lde/baumann/browser/Activity/BrowserActivity$VideoCompletionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lde/baumann/browser/Activity/BrowserActivity$VideoCompletionListener;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/Activity/BrowserActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2791
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->videoView:Landroid/widget/VideoView;

    new-instance v0, Lde/baumann/browser/Activity/BrowserActivity$VideoCompletionListener;

    invoke-direct {v0, p0, v1}, Lde/baumann/browser/Activity/BrowserActivity$VideoCompletionListener;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/Activity/BrowserActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2794
    :cond_2
    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    const/4 p1, 0x0

    .line 2795
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public declared-synchronized removeAlbum(Lde/baumann/browser/Browser/AlbumController;)V
    .locals 3

    monitor-enter p0

    .line 2576
    :try_start_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-eqz v0, :cond_5

    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 2593
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-eq p1, v0, :cond_2

    .line 2594
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v0, v0, Lde/baumann/browser/View/NinjaWebView;

    if-eqz v0, :cond_1

    .line 2595
    new-instance v0, Lde/baumann/browser/Activity/BrowserActivity$65;

    invoke-direct {v0, p0, p1}, Lde/baumann/browser/Activity/BrowserActivity$65;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/Browser/AlbumController;)V

    invoke-direct {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->closeTabConfirmation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2603
    :cond_1
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherContainer:Landroid/widget/LinearLayout;

    invoke-interface {p1}, Lde/baumann/browser/Browser/AlbumController;->getAlbumView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2604
    invoke-static {p1}, Lde/baumann/browser/Browser/BrowserContainer;->remove(Lde/baumann/browser/Browser/AlbumController;)V

    goto :goto_0

    .line 2609
    :cond_2
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v0, v0, Lde/baumann/browser/View/NinjaWebView;

    if-eqz v0, :cond_3

    .line 2610
    new-instance v0, Lde/baumann/browser/Activity/BrowserActivity$66;

    invoke-direct {v0, p0, p1}, Lde/baumann/browser/Activity/BrowserActivity$66;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/Browser/AlbumController;)V

    invoke-direct {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->closeTabConfirmation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2623
    :cond_3
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherContainer:Landroid/widget/LinearLayout;

    invoke-interface {p1}, Lde/baumann/browser/Browser/AlbumController;->getAlbumView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2624
    invoke-static {p1}, Lde/baumann/browser/Browser/BrowserContainer;->indexOf(Lde/baumann/browser/Browser/AlbumController;)I

    move-result v0

    .line 2625
    invoke-static {p1}, Lde/baumann/browser/Browser/BrowserContainer;->remove(Lde/baumann/browser/Browser/AlbumController;)V

    .line 2626
    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->size()I

    move-result p1

    if-lt v0, p1, :cond_4

    .line 2627
    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->size()I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    .line 2629
    :cond_4
    invoke-static {v0}, Lde/baumann/browser/Browser/BrowserContainer;->get(I)Lde/baumann/browser/Browser/AlbumController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/baumann/browser/Activity/BrowserActivity;->showAlbum(Lde/baumann/browser/Browser/AlbumController;Z)V

    .line 2632
    :goto_0
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->showOmnibox()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2633
    monitor-exit p0

    return-void

    .line 2578
    :cond_5
    :goto_1
    :try_start_1
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    instance-of v0, v0, Lde/baumann/browser/View/NinjaWebView;

    if-eqz v0, :cond_6

    .line 2579
    new-instance v0, Lde/baumann/browser/Activity/BrowserActivity$64;

    invoke-direct {v0, p0, p1}, Lde/baumann/browser/Activity/BrowserActivity$64;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/Browser/AlbumController;)V

    invoke-direct {p0, v0}, Lde/baumann/browser/Activity/BrowserActivity;->closeTabConfirmation(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2588
    :cond_6
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->doubleTapsQuit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2590
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2575
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized showAlbum(Lde/baumann/browser/Browser/AlbumController;Z)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 728
    :try_start_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 733
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-interface {v0}, Lde/baumann/browser/Browser/AlbumController;->deactivate()V

    .line 735
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 737
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 738
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 740
    :cond_1
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 741
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->contentFrame:Landroid/widget/FrameLayout;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 744
    :goto_0
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    .line 745
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->currentAlbumController:Lde/baumann/browser/Browser/AlbumController;

    invoke-interface {p1}, Lde/baumann/browser/Browser/AlbumController;->activate()V

    .line 746
    invoke-direct {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateOmnibox()V

    .line 747
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lde/baumann/browser/Activity/BrowserActivity$11;

    invoke-direct {v0, p0, p2}, Lde/baumann/browser/Activity/BrowserActivity$11;-><init>(Lde/baumann/browser/Activity/BrowserActivity;Z)V

    iget p2, p0, Lde/baumann/browser/Activity/BrowserActivity;->shortAnimTime:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 729
    :cond_2
    :goto_1
    :try_start_1
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->switcherPanel:Lde/baumann/browser/View/SwitcherPanel;

    invoke-virtual {p1}, Lde/baumann/browser/View/SwitcherPanel;->expanded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    monitor-exit p0

    return-void

    .line 727
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public showFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")V"
        }
    .end annotation

    .line 2731
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    .line 2733
    :try_start_0
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x101

    .line 2734
    invoke-virtual {p0, p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7f0e0101

    .line 2736
    invoke-virtual {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateAutoComplete()V
    .locals 3

    .line 759
    new-instance v0, Lde/baumann/browser/Database/RecordAction;

    invoke-direct {v0, p0}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 760
    invoke-virtual {v0, v1}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 761
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->listBookmarks()Ljava/util/List;

    move-result-object v1

    .line 762
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->listHistory()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 763
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->close()V

    .line 765
    new-instance v0, Lde/baumann/browser/View/CompleteAdapter;

    invoke-direct {v0, p0, v1}, Lde/baumann/browser/View/CompleteAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 766
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity;->inputBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 767
    invoke-virtual {v0}, Lde/baumann/browser/View/CompleteAdapter;->notifyDataSetChanged()V

    .line 768
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->inputBox:Landroid/widget/AutoCompleteTextView;

    invoke-static {p0}, Lde/baumann/browser/Unit/ViewUnit;->getWindowWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 769
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->inputBox:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$12;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$12;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public updateBookmarks()V
    .locals 2

    .line 782
    new-instance v0, Lde/baumann/browser/Database/RecordAction;

    invoke-direct {v0, p0}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 783
    invoke-virtual {v0, v1}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 784
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->close()V

    return-void
.end method

.method public updateInputBox(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 790
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->inputBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 792
    :cond_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->inputBox:Landroid/widget/AutoCompleteTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    :goto_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->inputBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    return-void
.end method

.method public declared-synchronized updateProgress(I)V
    .locals 2

    monitor-enter p0

    .line 2696
    :try_start_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2698
    invoke-virtual {p0}, Lde/baumann/browser/Activity/BrowserActivity;->updateBookmarks()V

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    .line 2700
    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->updateRefresh(Z)V

    .line 2701
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 2703
    :cond_0
    invoke-direct {p0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->updateRefresh(Z)V

    .line 2704
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2706
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2695
    monitor-exit p0

    throw p1
.end method
