.class public final enum Lorg/mozilla/focus/utils/Browsers$KnownBrowser;
.super Ljava/lang/Enum;
.source "Browsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/utils/Browsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KnownBrowser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mozilla/focus/utils/Browsers$KnownBrowser;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum ADBLOCK_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum ANDROID_STOCK_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum BRAVE_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum CHROME:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum CHROMER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum CHROME_BETA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum CHROME_CANARY:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum CHROME_DEV:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum DOLPHIN_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum FIREFOX:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum FIREFOX_AURORA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum FIREFOX_BETA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum FIREFOX_NIGHTLY:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum FIREFOX_ROCKET:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum FLYNX:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum GHOSTERY_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum LINK_BUBBLE:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum OPERA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum OPERA_BETA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum OPERA_MINI:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum OPERA_MINI_BETA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum SAMSUNG_INTERNET:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum UC_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

.field public static final enum UC_BROWSER_MINI:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;


# instance fields
.field public final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "FIREFOX"

    const-string v2, "org.mozilla.firefox"

    invoke-direct {v0, v1, v4, v2}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 29
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "FIREFOX_BETA"

    const-string v2, "org.mozilla.firefox_beta"

    invoke-direct {v0, v1, v5, v2}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_BETA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 30
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "FIREFOX_AURORA"

    const-string v2, "org.mozilla.fennec_aurora"

    invoke-direct {v0, v1, v6, v2}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_AURORA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 31
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "FIREFOX_NIGHTLY"

    const-string v2, "org.mozilla.fennec"

    invoke-direct {v0, v1, v7, v2}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_NIGHTLY:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 32
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "FIREFOX_ROCKET"

    const-string v2, "org.mozilla.rocket"

    invoke-direct {v0, v1, v8, v2}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_ROCKET:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 34
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "CHROME"

    const/4 v2, 0x5

    const-string v3, "com.android.chrome"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->CHROME:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 35
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "CHROME_BETA"

    const/4 v2, 0x6

    const-string v3, "com.chrome.beta"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->CHROME_BETA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 36
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "CHROME_DEV"

    const/4 v2, 0x7

    const-string v3, "com.chrome.dev"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->CHROME_DEV:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 37
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "CHROME_CANARY"

    const/16 v2, 0x8

    const-string v3, "com.chrome.canary"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->CHROME_CANARY:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 39
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "OPERA"

    const/16 v2, 0x9

    const-string v3, "com.opera.browser"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->OPERA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 40
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "OPERA_BETA"

    const/16 v2, 0xa

    const-string v3, "com.opera.browser.beta"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->OPERA_BETA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 41
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "OPERA_MINI"

    const/16 v2, 0xb

    const-string v3, "com.opera.mini.native"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->OPERA_MINI:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 42
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "OPERA_MINI_BETA"

    const/16 v2, 0xc

    const-string v3, "com.opera.mini.native.beta"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->OPERA_MINI_BETA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 44
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "UC_BROWSER"

    const/16 v2, 0xd

    const-string v3, "com.UCMobile.intl"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->UC_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 45
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "UC_BROWSER_MINI"

    const/16 v2, 0xe

    const-string v3, "com.uc.browser.en"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->UC_BROWSER_MINI:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 47
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "ANDROID_STOCK_BROWSER"

    const/16 v2, 0xf

    const-string v3, "com.android.browser"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->ANDROID_STOCK_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 49
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "SAMSUNG_INTERNET"

    const/16 v2, 0x10

    const-string v3, "com.sec.android.app.sbrowser"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->SAMSUNG_INTERNET:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 50
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "DOLPHIN_BROWSER"

    const/16 v2, 0x11

    const-string v3, "mobi.mgeek.TunnyBrowser"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->DOLPHIN_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 51
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "BRAVE_BROWSER"

    const/16 v2, 0x12

    const-string v3, "com.brave.browser"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->BRAVE_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 52
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "LINK_BUBBLE"

    const/16 v2, 0x13

    const-string v3, "com.linkbubble.playstore"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->LINK_BUBBLE:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 53
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "ADBLOCK_BROWSER"

    const/16 v2, 0x14

    const-string v3, "org.adblockplus.browser"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->ADBLOCK_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 54
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "CHROMER"

    const/16 v2, 0x15

    const-string v3, "arun.com.chromer"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->CHROMER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 55
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "FLYNX"

    const/16 v2, 0x16

    const-string v3, "com.flynx"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FLYNX:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 56
    new-instance v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    const-string v1, "GHOSTERY_BROWSER"

    const/16 v2, 0x17

    const-string v3, "com.ghostery.android.ghostery"

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->GHOSTERY_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    .line 26
    const/16 v0, 0x18

    new-array v0, v0, [Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    sget-object v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v1, v0, v4

    sget-object v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_BETA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v1, v0, v5

    sget-object v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_AURORA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v1, v0, v6

    sget-object v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_NIGHTLY:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v1, v0, v7

    sget-object v1, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FIREFOX_ROCKET:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->CHROME:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->CHROME_BETA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->CHROME_DEV:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->CHROME_CANARY:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->OPERA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->OPERA_BETA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->OPERA_MINI:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->OPERA_MINI_BETA:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->UC_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->UC_BROWSER_MINI:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->ANDROID_STOCK_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->SAMSUNG_INTERNET:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->DOLPHIN_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->BRAVE_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->LINK_BUBBLE:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->ADBLOCK_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->CHROMER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->FLYNX:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->GHOSTERY_BROWSER:Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    aput-object v2, v0, v1

    sput-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->$VALUES:[Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->packageName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/focus/utils/Browsers$KnownBrowser;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    return-object v0
.end method

.method public static values()[Lorg/mozilla/focus/utils/Browsers$KnownBrowser;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->$VALUES:[Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    invoke-virtual {v0}, [Lorg/mozilla/focus/utils/Browsers$KnownBrowser;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/focus/utils/Browsers$KnownBrowser;

    return-object v0
.end method
