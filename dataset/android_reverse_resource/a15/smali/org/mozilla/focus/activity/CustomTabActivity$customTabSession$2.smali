.class final Lorg/mozilla/focus/activity/CustomTabActivity$customTabSession$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CustomTabActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/activity/CustomTabActivity;-><init>()V
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
        "Lorg/mozilla/focus/session/Session;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/activity/CustomTabActivity;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/activity/CustomTabActivity;)V
    .locals 1

    iput-object p1, p0, Lorg/mozilla/focus/activity/CustomTabActivity$customTabSession$2;->this$0:Lorg/mozilla/focus/activity/CustomTabActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lorg/mozilla/focus/activity/CustomTabActivity$customTabSession$2;->invoke()Lorg/mozilla/focus/session/Session;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/mozilla/focus/session/Session;
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/activity/CustomTabActivity$customTabSession$2;->this$0:Lorg/mozilla/focus/activity/CustomTabActivity;

    invoke-static {v1}, Lorg/mozilla/focus/activity/CustomTabActivity;->access$getCustomTabId$p(Lorg/mozilla/focus/activity/CustomTabActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/session/SessionManager;->getCustomTabSessionByCustomTabIdOrThrow(Ljava/lang/String;)Lorg/mozilla/focus/session/Session;

    move-result-object v0

    return-object v0
.end method
