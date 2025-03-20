.class Lde/baumann/browser/Activity/BrowserActivity$78;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->showSoftInput(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$view:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3033
    const-class v0, Lde/baumann/browser/Activity/BrowserActivity;

    return-void
.end method

.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 3033
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$78;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$78;->val$view:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3036
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$78;->val$view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3037
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$78;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3039
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method
