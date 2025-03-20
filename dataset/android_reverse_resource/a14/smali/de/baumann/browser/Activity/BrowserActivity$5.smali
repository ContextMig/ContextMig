.class Lde/baumann/browser/Activity/BrowserActivity$5;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$5;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 470
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$5;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const-class v1, Lde/baumann/browser/Activity/Settings_Activity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$5;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-virtual {v0, p1}, Lde/baumann/browser/Activity/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 472
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$5;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method
