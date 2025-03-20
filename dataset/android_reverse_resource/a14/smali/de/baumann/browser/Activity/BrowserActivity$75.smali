.class Lde/baumann/browser/Activity/BrowserActivity$75;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->doubleTapsQuit()V
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

    .line 2988
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$75;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 2991
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$75;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-virtual {p1}, Lde/baumann/browser/Activity/BrowserActivity;->finish()V

    return-void
.end method
