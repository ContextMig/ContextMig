.class public final Lorg/mozilla/focus/activity/CustomTabActivity;
.super Lorg/mozilla/focus/activity/MainActivity;
.source "CustomTabActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomTabActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomTabActivity.kt\norg/mozilla/focus/activity/CustomTabActivity\n*L\n1#1,48:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private customTabId:Ljava/lang/String;

.field private final customTabSession$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lorg/mozilla/focus/activity/CustomTabActivity;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "customTabSession"

    const-string v5, "getCustomTabSession()Lorg/mozilla/focus/session/Session;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lorg/mozilla/focus/activity/CustomTabActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/mozilla/focus/activity/MainActivity;-><init>()V

    .line 18
    new-instance v0, Lorg/mozilla/focus/activity/CustomTabActivity$customTabSession$2;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/activity/CustomTabActivity$customTabSession$2;-><init>(Lorg/mozilla/focus/activity/CustomTabActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/activity/CustomTabActivity;->customTabSession$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCustomTabId$p(Lorg/mozilla/focus/activity/CustomTabActivity;)Ljava/lang/String;
    .locals 2
    .param p0, "$this"    # Lorg/mozilla/focus/activity/CustomTabActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lorg/mozilla/focus/activity/CustomTabActivity;->customTabId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "customTabId"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private final getCustomTabSession()Lorg/mozilla/focus/session/Session;
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/mozilla/focus/activity/CustomTabActivity;->customTabSession$delegate:Lkotlin/Lazy;

    sget-object v1, Lorg/mozilla/focus/activity/CustomTabActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/session/Session;

    return-object v0
.end method


# virtual methods
.method protected getCurrentSessionForActivity()Lorg/mozilla/focus/session/Session;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/mozilla/focus/activity/CustomTabActivity;->getCustomTabSession()Lorg/mozilla/focus/session/Session;

    move-result-object v0

    return-object v0
.end method

.method protected isCustomTabMode()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lorg/mozilla/focus/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance v0, Lmozilla/components/support/utils/SafeIntent;

    invoke-virtual {p0}, Lorg/mozilla/focus/activity/CustomTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lmozilla/components/support/utils/SafeIntent;-><init>(Landroid/content/Intent;)V

    .line 28
    .local v0, "intent":Lmozilla/components/support/utils/SafeIntent;
    const-string v1, "org.mozilla.focus.custom-tab-id"

    invoke-virtual {v0, v1}, Lmozilla/components/support/utils/SafeIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 29
    iput-object v1, p0, Lorg/mozilla/focus/activity/CustomTabActivity;->customTabId:Ljava/lang/String;

    .line 30
    return-void

    .line 29
    :cond_0
    new-instance v1, Ljava/lang/IllegalAccessError;

    const-string v2, "No custom tab id in intent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 33
    invoke-super {p0}, Lorg/mozilla/focus/activity/MainActivity;->onPause()V

    .line 35
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/CustomTabActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v1

    const-string v2, "SessionManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .local v1, "sessionManager":Lorg/mozilla/focus/session/SessionManager;
    iget-object v2, p0, Lorg/mozilla/focus/activity/CustomTabActivity;->customTabId:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v3, "customTabId"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v2}, Lorg/mozilla/focus/session/SessionManager;->getCustomTabSessionByCustomTabId(Ljava/lang/String;)Lorg/mozilla/focus/session/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    .local v0, "it":Lorg/mozilla/focus/session/Session;
    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/focus/session/SessionManager;->removeCustomTabSession(Ljava/lang/String;)V

    .line 44
    .end local v0    # "it":Lorg/mozilla/focus/session/Session;
    .end local v1    # "sessionManager":Lorg/mozilla/focus/session/SessionManager;
    :cond_1
    return-void
.end method
