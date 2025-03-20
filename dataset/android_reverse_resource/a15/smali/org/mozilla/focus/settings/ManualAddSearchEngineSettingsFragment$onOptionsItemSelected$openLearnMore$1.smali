.class final Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$openLearnMore$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ManualAddSearchEngineSettingsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;)V
    .locals 1

    iput-object p1, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$openLearnMore$1;->this$0:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$openLearnMore$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .prologue
    .line 84
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/session/Source;->MENU:Lorg/mozilla/focus/session/Source;

    .line 85
    iget-object v0, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$openLearnMore$1;->this$0:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v3, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->ADD_SEARCH_ENGINE:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    invoke-static {v0, v3}, Lorg/mozilla/focus/utils/SupportUtils;->getSumoURLForTopic(Landroid/content/Context;Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v1, v2, v0}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$onOptionsItemSelected$openLearnMore$1;->this$0:Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 87
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->addSearchEngineLearnMoreEvent()V

    .line 88
    return-void
.end method
