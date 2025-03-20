.class final Lorg/mozilla/focus/fragment/UrlInputFragment$onResume$2;
.super Ljava/lang/Object;
.source "UrlInputFragment.kt"

# interfaces
.implements Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/UrlInputFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/UrlInputFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$onResume$2;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusBarHeightFetched(I)V
    .locals 1
    .param p1, "it"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$onResume$2;->this$0:Lorg/mozilla/focus/fragment/UrlInputFragment;

    invoke-static {v0, p1}, Lorg/mozilla/focus/fragment/UrlInputFragment;->access$adjustViewToStatusBarHeight(Lorg/mozilla/focus/fragment/UrlInputFragment;I)V

    .line 149
    return-void
.end method
