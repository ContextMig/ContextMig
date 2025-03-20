.class public final Lorg/mozilla/focus/activity/IntentReceiverActivity;
.super Landroid/app/Activity;
.source "IntentReceiverActivity.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final dispatchCustomTabsIntent()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/mozilla/focus/activity/IntentReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/IntentReceiverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/mozilla/focus/activity/CustomTabActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "org.mozilla.focus.custom-tab-id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Lorg/mozilla/focus/activity/IntentReceiverActivity;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

.method private final dispatchNormalIntent()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/mozilla/focus/activity/IntentReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/IntentReceiverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/mozilla/focus/activity/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Lorg/mozilla/focus/activity/IntentReceiverActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    new-instance v0, Lmozilla/components/support/utils/SafeIntent;

    invoke-virtual {p0}, Lorg/mozilla/focus/activity/IntentReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lmozilla/components/support/utils/SafeIntent;-><init>(Landroid/content/Intent;)V

    .line 23
    .local v0, "intent":Lmozilla/components/support/utils/SafeIntent;
    invoke-static {v0}, Lorg/mozilla/focus/customtabs/CustomTabConfig;->isCustomTabIntent(Lmozilla/components/support/utils/SafeIntent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-direct {p0}, Lorg/mozilla/focus/activity/IntentReceiverActivity;->dispatchCustomTabsIntent()V

    .line 27
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/IntentReceiverActivity;->finish()V

    .line 30
    return-void

    .line 26
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/focus/activity/IntentReceiverActivity;->dispatchNormalIntent()V

    goto :goto_0
.end method
