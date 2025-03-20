.class public final Lorg/mozilla/focus/session/ui/SessionViewHolder$selectSession$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SessionViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/session/ui/SessionViewHolder;->selectSession(Lorg/mozilla/focus/session/Session;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $session:Lorg/mozilla/focus/session/Session;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/session/Session;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lorg/mozilla/focus/session/Session;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/mozilla/focus/session/ui/SessionViewHolder$selectSession$1;->$session:Lorg/mozilla/focus/session/Session;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/session/ui/SessionViewHolder$selectSession$1;->$session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/session/SessionManager;->selectSession(Lorg/mozilla/focus/session/Session;)V

    .line 77
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->switchTabInTabsTrayEvent()V

    .line 78
    return-void
.end method
