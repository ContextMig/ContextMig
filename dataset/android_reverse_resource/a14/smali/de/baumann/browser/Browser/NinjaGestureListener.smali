.class public Lde/baumann/browser/Browser/NinjaGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NinjaGestureListener.java"


# instance fields
.field private longPress:Z

.field private final webView:Lde/baumann/browser/View/NinjaWebView;


# direct methods
.method public constructor <init>(Lde/baumann/browser/View/NinjaWebView;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lde/baumann/browser/Browser/NinjaGestureListener;->longPress:Z

    .line 13
    iput-object p1, p0, Lde/baumann/browser/Browser/NinjaGestureListener;->webView:Lde/baumann/browser/View/NinjaWebView;

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lde/baumann/browser/Browser/NinjaGestureListener;->longPress:Z

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 18
    iget-boolean p1, p0, Lde/baumann/browser/Browser/NinjaGestureListener;->longPress:Z

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaGestureListener;->webView:Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {p1}, Lde/baumann/browser/View/NinjaWebView;->onLongPress()V

    :cond_0
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lde/baumann/browser/Browser/NinjaGestureListener;->longPress:Z

    return-void
.end method
