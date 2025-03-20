.class Lde/baumann/browser/Activity/BrowserActivity$6;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 483
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$6;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 485
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$6;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$800(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
