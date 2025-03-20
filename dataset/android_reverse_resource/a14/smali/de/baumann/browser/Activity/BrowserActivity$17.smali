.class Lde/baumann/browser/Activity/BrowserActivity$17;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 1009
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$17;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1012
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$17;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1500(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$17;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v0, 0x7f06002a

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p1, 0x0

    return p1
.end method
