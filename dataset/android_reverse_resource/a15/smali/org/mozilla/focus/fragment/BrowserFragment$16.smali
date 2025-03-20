.class Lorg/mozilla/focus/fragment/BrowserFragment$16;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/BrowserFragment;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/fragment/BrowserFragment;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 1324
    iput-object p1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$16;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1324
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/BrowserFragment$16;->invoke()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Lkotlin/Unit;
    .locals 2

    .prologue
    .line 1327
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$16;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lorg/mozilla/focus/fragment/BrowserFragment$16$1;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/fragment/BrowserFragment$16$1;-><init>(Lorg/mozilla/focus/fragment/BrowserFragment$16;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1335
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
