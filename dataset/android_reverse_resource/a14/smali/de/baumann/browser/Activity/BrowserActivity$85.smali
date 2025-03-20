.class Lde/baumann/browser/Activity/BrowserActivity$85;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->showListMenu(Lde/baumann/browser/View/Adapter_Record;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$record:Lde/baumann/browser/Database/Record;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/Database/Record;)V
    .locals 0

    .line 3328
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$85;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$85;->val$record:Lde/baumann/browser/Database/Record;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 3331
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$85;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$85;->val$record:Lde/baumann/browser/Database/Record;

    invoke-virtual {v0}, Lde/baumann/browser/Database/Record;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$3000(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V

    .line 3332
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$85;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method
