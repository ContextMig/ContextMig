.class Lde/baumann/browser/Activity/BrowserActivity$14;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$pass_title:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$14;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$14;->val$pass_title:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 955
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$14;->val$pass_title:Landroid/widget/EditText;

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$14;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1200(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/NinjaWebView;

    move-result-object v1

    invoke-virtual {v1}, Lde/baumann/browser/View/NinjaWebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 956
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$14;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$14;->val$pass_title:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1300(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V

    return-void
.end method
