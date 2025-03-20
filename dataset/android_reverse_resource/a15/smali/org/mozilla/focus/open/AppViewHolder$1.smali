.class Lorg/mozilla/focus/open/AppViewHolder$1;
.super Ljava/lang/Object;
.source "AppViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/open/AppViewHolder;->createListenerWrapper(Lorg/mozilla/focus/open/AppAdapter$App;Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/open/AppViewHolder;

.field final synthetic val$app:Lorg/mozilla/focus/open/AppAdapter$App;

.field final synthetic val$listener:Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/open/AppViewHolder;Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;Lorg/mozilla/focus/open/AppAdapter$App;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/open/AppViewHolder;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/mozilla/focus/open/AppViewHolder$1;->this$0:Lorg/mozilla/focus/open/AppViewHolder;

    iput-object p2, p0, Lorg/mozilla/focus/open/AppViewHolder$1;->val$listener:Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;

    iput-object p3, p0, Lorg/mozilla/focus/open/AppViewHolder$1;->val$app:Lorg/mozilla/focus/open/AppAdapter$App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/mozilla/focus/open/AppViewHolder$1;->val$listener:Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lorg/mozilla/focus/open/AppViewHolder$1;->val$listener:Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;

    iget-object v1, p0, Lorg/mozilla/focus/open/AppViewHolder$1;->val$app:Lorg/mozilla/focus/open/AppAdapter$App;

    invoke-interface {v0, v1}, Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;->onAppSelected(Lorg/mozilla/focus/open/AppAdapter$App;)V

    .line 42
    :cond_0
    return-void
.end method
