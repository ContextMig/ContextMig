.class public Lcom/appflood/AppFlood;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appflood/AppFlood$AFBannerShowDelegate;,
        Lcom/appflood/AppFlood$AFEventDelegate;,
        Lcom/appflood/AppFlood$AFRequestDelegate;
    }
.end annotation


# static fields
.field public static final AD_ALL:I = 0xff

.field public static final AD_BANNER:I = 0x1

.field public static final AD_DATA:I = 0x10

.field public static final AD_FULLSCREEN:I = 0x4

.field public static final AD_ICON:I = 0x40

.field public static final AD_INTERSTITIAL:I = 0x80

.field public static final AD_LIST:I = 0x8

.field public static final AD_NONE:I = 0x0

.field public static final AD_NOTIFICATION:I = 0x20

.field public static final AD_PANEL:I = 0x2

.field public static final BANNER_CUSTOM:I = 0xe

.field public static final BANNER_INTERSTITIAL:I = 0xd

.field public static final BANNER_LARGE:I = 0xa

.field public static final BANNER_MIDDLE:I = 0x10

.field public static final BANNER_POSITION_BOTTOM:I = 0x1

.field public static final BANNER_POSITION_TOP:I = 0x0

.field public static final BANNER_SMALL:I = 0x11

.field public static final BANNER_WEB_FULLSCREEN:I = 0xf

.field public static ICON_STYLE_MULTIPLE:I = 0x0

.field public static ICON_STYLE_SINGLE:I = 0x0

.field public static final LIST_ALL:I = 0x2

.field public static final LIST_APP:I = 0x1

.field public static final LIST_GAME:I = 0x0

.field public static final LIST_TAB_APP:I = 0x4

.field public static final LIST_TAB_GAME:I = 0x3

.field public static NOTIFICATION_STYLE_BANNER:I = 0x0

.field public static NOTIFICATION_STYLE_TEXT:I = 0x0

.field public static final PANEL_BOTTOM:I = 0x1

.field public static final PANEL_LANDSCAPE:I = 0x14

.field public static final PANEL_PORTRAIT:I = 0x15

.field public static final PANEL_TOP:I = 0x0

.field public static final REGION_AUTO:I = 0x2

.field public static final REGION_CHINA:I = 0x0

.field public static final REGION_GLOBAL:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x1

    sput v0, Lcom/appflood/AppFlood;->NOTIFICATION_STYLE_TEXT:I

    sput v1, Lcom/appflood/AppFlood;->NOTIFICATION_STYLE_BANNER:I

    sput v0, Lcom/appflood/AppFlood;->ICON_STYLE_SINGLE:I

    sput v1, Lcom/appflood/AppFlood;->ICON_STYLE_MULTIPLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consumeAFPoint(ILcom/appflood/AppFlood$AFRequestDelegate;)V
    .locals 1

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/appflood/c/e;->b:Z

    if-nez v0, :cond_0

    const-string v0, "AppFlood not initialized"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appflood/c/e$7;

    invoke-direct {v0, p1, p0}, Lcom/appflood/c/e$7;-><init>(Lcom/appflood/AppFlood$AFRequestDelegate;I)V

    invoke-static {v0}, Lcom/appflood/c/d;->a(Lcom/appflood/c/d$a;)V

    goto :goto_0
.end method

.method public static destroy()V
    .locals 1

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/c/e;->b()V

    return-void
.end method

.method public static getADData(Lcom/appflood/AppFlood$AFRequestDelegate;)V
    .locals 1

    sget v0, Lcom/appflood/c/d;->z:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_1

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/appflood/c/e;->b:Z

    if-nez v0, :cond_0

    const-string v0, "AppFlood not initialized"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appflood/c/e$9;

    invoke-direct {v0, p0}, Lcom/appflood/c/e$9;-><init>(Lcom/appflood/AppFlood$AFRequestDelegate;)V

    invoke-static {v0}, Lcom/appflood/c/d;->a(Lcom/appflood/c/d$a;)V

    goto :goto_0

    :cond_1
    const-string v0, "AD_TYPE not supported. Please initialize AppFlood with correct parameters."

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAdType()I
    .locals 1

    sget v0, Lcom/appflood/c/d;->z:I

    return v0
.end method

.method public static getEventDelegate()Lcom/appflood/AppFlood$AFEventDelegate;
    .locals 1

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    iget-object v0, v0, Lcom/appflood/c/e;->a:Lcom/appflood/AppFlood$AFEventDelegate;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "V2.1"

    return-object v0
.end method

.method public static handleAFClick(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/appflood/c/e;->b:Z

    if-nez v0, :cond_1

    const-string v0, "AppFlood not initialized"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Lcom/appflood/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/appflood/b/b;->d()V

    const-string v0, "://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/appflood/e/k;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "error in handleClick"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/appflood/AppFlood;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/appflood/c/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static isConnected()Z
    .locals 1

    sget-boolean v0, Lcom/appflood/c/d;->i:Z

    return v0
.end method

.method public static preload(ILcom/appflood/AppFlood$AFRequestDelegate;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/appflood/AppFlood;->preload(ILcom/appflood/AppFlood$AFRequestDelegate;I)V

    return-void
.end method

.method public static preload(ILcom/appflood/AppFlood$AFRequestDelegate;I)V
    .locals 1

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/appflood/c/e;->b:Z

    if-nez v0, :cond_0

    const-string v0, "AppFlood not initialized"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appflood/c/e$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/appflood/c/e$3;-><init>(ILcom/appflood/AppFlood$AFRequestDelegate;I)V

    invoke-static {v0}, Lcom/appflood/c/d;->a(Lcom/appflood/c/d$a;)V

    goto :goto_0
.end method

.method public static preloadBanner(ILcom/appflood/AppFlood$AFRequestDelegate;)V
    .locals 2

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/appflood/c/g;->a(ILcom/appflood/AppFlood$AFRequestDelegate;Z)V

    return-void
.end method

.method public static queryAFPoint(Lcom/appflood/AppFlood$AFRequestDelegate;)V
    .locals 1

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/appflood/c/e;->b:Z

    if-nez v0, :cond_0

    const-string v0, "AppFlood not initialized"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appflood/c/e$8;

    invoke-direct {v0, p0}, Lcom/appflood/c/e$8;-><init>(Lcom/appflood/AppFlood$AFRequestDelegate;)V

    invoke-static {v0}, Lcom/appflood/c/d;->a(Lcom/appflood/c/d$a;)V

    goto :goto_0
.end method

.method public static setEventDelegate(Lcom/appflood/AppFlood$AFEventDelegate;)V
    .locals 1

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    iput-object p0, v0, Lcom/appflood/c/e;->a:Lcom/appflood/AppFlood$AFEventDelegate;

    return-void
.end method

.method public static setUserData(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "UserData is null or empty!"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    :cond_1
    sput-object p0, Lcom/appflood/c/d;->h:Ljava/util/HashMap;

    return-void
.end method

.method public static showBanner(Landroid/app/Activity;II)V
    .locals 4

    sget-boolean v0, Lcom/appflood/c/d;->A:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/appflood/c/d;->z:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    new-instance v1, Lcom/appflood/AFBannerView;

    invoke-direct {v1, p0, p2}, Lcom/appflood/AFBannerView;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    packed-switch p1, :pswitch_data_0

    :goto_1
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x30

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x50

    goto :goto_1

    :cond_1
    const-string v0, "AD_TYPE not supported. Please initialize AppFlood with correct parameters."

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static showFullScreen(Landroid/app/Activity;)V
    .locals 1

    sget-boolean v0, Lcom/appflood/c/d;->A:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/appflood/c/d;->z:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appflood/c/e;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const-string v0, "AD_TYPE not supported. Please initialize AppFlood with correct parameters."

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showInterstitial(Landroid/app/Activity;)V
    .locals 2

    sget-boolean v0, Lcom/appflood/c/d;->A:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/appflood/c/d;->z:I

    and-int/lit16 v0, v0, 0x80

    if-lez v0, :cond_3

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    iget-boolean v1, v0, Lcom/appflood/c/e;->b:Z

    if-nez v1, :cond_1

    const-string v0, "AppFlood not initialized"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    const-string v0, "context con is null"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/appflood/c/e$6;

    invoke-direct {v1, v0, p0}, Lcom/appflood/c/e$6;-><init>(Lcom/appflood/c/e;Landroid/app/Activity;)V

    invoke-static {p0, v1}, Lcom/appflood/c/d;->a(Landroid/content/Context;Lcom/appflood/c/d$a;)V

    goto :goto_0

    :cond_3
    const-string v0, "AD_TYPE not supported. Please initialize AppFlood with correct parameters."

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showList(Landroid/app/Activity;I)V
    .locals 1

    sget-boolean v0, Lcom/appflood/c/d;->A:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/appflood/c/d;->z:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_3

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/appflood/c/e;->b:Z

    if-nez v0, :cond_1

    const-string v0, "AppFlood not initialized"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    const-string v0, "activity is null"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/appflood/c/e$1;

    invoke-direct {v0, p0, p1}, Lcom/appflood/c/e$1;-><init>(Landroid/app/Activity;I)V

    invoke-static {p0, v0}, Lcom/appflood/c/d;->a(Landroid/content/Context;Lcom/appflood/c/d$a;)V

    goto :goto_0

    :cond_3
    const-string v0, "AD_TYPE not supported. Please initialize AppFlood with correct parameters."

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showPanel(Landroid/app/Activity;I)V
    .locals 1

    sget-boolean v0, Lcom/appflood/c/d;->A:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/appflood/c/d;->z:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_3

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/appflood/c/e;->b:Z

    if-nez v0, :cond_1

    const-string v0, "AppFlood not initialized"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    const-string v0, "context con is null"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/appflood/c/e$5;

    invoke-direct {v0, p0, p1}, Lcom/appflood/c/e$5;-><init>(Landroid/app/Activity;I)V

    invoke-static {p0, v0}, Lcom/appflood/c/d;->a(Landroid/content/Context;Lcom/appflood/c/d$a;)V

    goto :goto_0

    :cond_3
    const-string v0, "AD_TYPE not supported. Please initialize AppFlood with correct parameters."

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showWaitingLoading(Z)V
    .locals 0

    sput-boolean p0, Lcom/appflood/c/d;->B:Z

    return-void
.end method
