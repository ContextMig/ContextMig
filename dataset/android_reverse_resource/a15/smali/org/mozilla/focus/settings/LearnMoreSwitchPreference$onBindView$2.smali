.class final Lorg/mozilla/focus/settings/LearnMoreSwitchPreference$onBindView$2;
.super Ljava/lang/Object;
.source "LearnMoreSwitchPreference.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/settings/LearnMoreSwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/settings/LearnMoreSwitchPreference;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/settings/LearnMoreSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/focus/settings/LearnMoreSwitchPreference$onBindView$2;->this$0:Lorg/mozilla/focus/settings/LearnMoreSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v0

    sget-object v1, Lorg/mozilla/focus/session/Source;->MENU:Lorg/mozilla/focus/session/Source;

    iget-object v2, p0, Lorg/mozilla/focus/settings/LearnMoreSwitchPreference$onBindView$2;->this$0:Lorg/mozilla/focus/settings/LearnMoreSwitchPreference;

    invoke-virtual {v2}, Lorg/mozilla/focus/settings/LearnMoreSwitchPreference;->getLearnMoreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lorg/mozilla/focus/settings/LearnMoreSwitchPreference$onBindView$2;->this$0:Lorg/mozilla/focus/settings/LearnMoreSwitchPreference;

    invoke-virtual {v0}, Lorg/mozilla/focus/settings/LearnMoreSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 41
    return-void
.end method
