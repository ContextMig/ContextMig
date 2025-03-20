.class Lde/baumann/browser/Activity/BrowserActivity$20;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->onClick(Landroid/view/View;)V
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

    .line 1094
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$20;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1097
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$20;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$20;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object p1

    instance-of p1, p1, Lde/baumann/browser/View/NinjaRelativeLayout;

    if-eqz p1, :cond_1

    .line 1098
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$20;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1700(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1100
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$20;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1800(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/NinjaRelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaRelativeLayout;->getFlag()I

    move-result p1

    const/16 v0, 0x105

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1102
    :pswitch_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$20;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Unit/BrowserUnit;->clearHome(Landroid/content/Context;)V

    goto :goto_0

    .line 1108
    :pswitch_1
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$20;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Unit/BrowserUnit;->clearHistory(Landroid/content/Context;)V

    goto :goto_0

    .line 1105
    :pswitch_2
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$20;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Unit/BrowserUnit;->clearBookmarks(Landroid/content/Context;)V

    goto :goto_0

    .line 1111
    :cond_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$20;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const-string v0, "pass_DB_v01.db"

    invoke-virtual {p1, v0}, Lde/baumann/browser/Activity/BrowserActivity;->deleteDatabase(Ljava/lang/String;)Z

    .line 1115
    :cond_1
    :goto_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$20;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 1116
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$20;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$900(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->performClick()Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
