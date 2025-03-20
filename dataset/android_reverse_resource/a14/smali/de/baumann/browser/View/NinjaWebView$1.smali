.class Lde/baumann/browser/View/NinjaWebView$1;
.super Ljava/lang/Object;
.source "NinjaWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/View/NinjaWebView;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/View/NinjaWebView;


# direct methods
.method constructor <init>(Lde/baumann/browser/View/NinjaWebView;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lde/baumann/browser/View/NinjaWebView$1;->this$0:Lde/baumann/browser/View/NinjaWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 140
    iget-object p1, p0, Lde/baumann/browser/View/NinjaWebView$1;->this$0:Lde/baumann/browser/View/NinjaWebView;

    invoke-static {p1}, Lde/baumann/browser/View/NinjaWebView;->access$000(Lde/baumann/browser/View/NinjaWebView;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
