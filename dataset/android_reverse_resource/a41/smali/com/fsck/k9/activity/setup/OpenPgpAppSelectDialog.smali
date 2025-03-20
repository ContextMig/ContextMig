.class public Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;
.super Landroid/app/Activity;
.source "OpenPgpAppSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;,
        Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$ApgDeprecationDialogFragment;,
        Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;
    }
.end annotation


# static fields
.field private static final APG_PROVIDER_PLACEHOLDER:Ljava/lang/String; = "apg-placeholder"

.field public static final FRAG_APG_DEPRECATE:Ljava/lang/String; = "apg_deprecate"

.field public static final FRAG_OPENPGP_SELECT:Ljava/lang/String; = "openpgp_select"

.field private static final MARKET_INTENT:Landroid/content/Intent;

.field private static final MARKET_INTENT_URI_BASE:Ljava/lang/String; = "market://details?id=%s"

.field private static final OPENKEYCHAIN_PACKAGE:Ljava/lang/String; = "org.sufficientlysecure.keychain"

.field private static final PACKAGE_NAME_APG:Ljava/lang/String; = "org.thialfihar.android.apg"

.field private static final PROVIDER_BLACKLIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "org.sufficientlysecure.keychain"

    aput-object v5, v3, v4

    .line 44
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->MARKET_INTENT:Landroid/content/Intent;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->PROVIDER_BLACKLIST:Ljava/util/ArrayList;

    .line 50
    sget-object v0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->PROVIDER_BLACKLIST:Ljava/util/ArrayList;

    const-string v1, "org.thialfihar.android.apg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->PROVIDER_BLACKLIST:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->MARKET_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method private persistOpenPgpProviderSetting(Ljava/lang/String;)V
    .locals 2
    .param p1, "selectedPackage"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-static {p1}, Lcom/fsck/k9/K9;->setOpenPgpProvider(Ljava/lang/String;)V

    .line 245
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v0

    .line 246
    .local v0, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    invoke-static {v0}, Lcom/fsck/k9/K9;->save(Lcom/fsck/k9/preferences/StorageEditor;)V

    .line 247
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    .line 248
    return-void
.end method

.method private showApgDeprecationDialogFragment()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$ApgDeprecationDialogFragment;

    invoke-direct {v0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$ApgDeprecationDialogFragment;-><init>()V

    .line 72
    .local v0, "fragment":Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$ApgDeprecationDialogFragment;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "apg_deprecate"

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$ApgDeprecationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private showOpenPgpSelectDialogFragment()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;

    invoke-direct {v0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;-><init>()V

    .line 67
    .local v0, "fragment":Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "openpgp_select"

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {}, Lcom/fsck/k9/K9;->getK9Theme()Lcom/fsck/k9/K9$Theme;

    move-result-object v0

    sget-object v1, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    if-ne v0, v1, :cond_1

    const v0, 0x7f08001a

    :goto_0
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->setTheme(I)V

    .line 60
    if-nez p1, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->showOpenPgpSelectDialogFragment()V

    .line 63
    :cond_0
    return-void

    .line 57
    :cond_1
    const v0, 0x7f080019

    goto :goto_0
.end method

.method public onDismissApgDialog()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->showOpenPgpSelectDialogFragment()V

    .line 252
    return-void
.end method

.method public onSelectProvider(Ljava/lang/String;)V
    .locals 1
    .param p1, "selectedPackage"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string v0, "apg-placeholder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->showApgDeprecationDialogFragment()V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->persistOpenPgpProviderSetting(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->finish()V

    goto :goto_0
.end method
