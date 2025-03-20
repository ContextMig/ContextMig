.class Lde/baumann/browser/Activity/BrowserActivity$74$2;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity$74;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

.field final synthetic val$editTitle:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity$74;Landroid/widget/EditText;)V
    .locals 0

    .line 2960
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$74$2;->this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$74$2;->val$editTitle:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2962
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2963
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$74$2;->this$1:Lde/baumann/browser/Activity/BrowserActivity$74;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$74;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$74$2;->val$editTitle:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$1100(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V

    return-void
.end method
