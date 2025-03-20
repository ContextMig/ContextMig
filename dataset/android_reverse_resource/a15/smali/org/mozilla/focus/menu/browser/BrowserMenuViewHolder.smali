.class public abstract Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BrowserMenuViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected browserFragment:Lorg/mozilla/focus/fragment/BrowserFragment;

.field private menu:Lorg/mozilla/focus/menu/browser/BrowserMenu;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getMenu()Lorg/mozilla/focus/menu/browser/BrowserMenu;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;->menu:Lorg/mozilla/focus/menu/browser/BrowserMenu;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;->menu:Lorg/mozilla/focus/menu/browser/BrowserMenu;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;->menu:Lorg/mozilla/focus/menu/browser/BrowserMenu;

    invoke-virtual {v0}, Lorg/mozilla/focus/menu/browser/BrowserMenu;->dismiss()V

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;->browserFragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;->browserFragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/fragment/BrowserFragment;->onClick(Landroid/view/View;)V

    .line 42
    :cond_1
    return-void
.end method

.method public setMenu(Lorg/mozilla/focus/menu/browser/BrowserMenu;)V
    .locals 0
    .param p1, "menu"    # Lorg/mozilla/focus/menu/browser/BrowserMenu;

    .prologue
    .line 22
    iput-object p1, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;->menu:Lorg/mozilla/focus/menu/browser/BrowserMenu;

    .line 23
    return-void
.end method

.method public setOnClickListener(Lorg/mozilla/focus/fragment/BrowserFragment;)V
    .locals 0
    .param p1, "browserFragment"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 30
    iput-object p1, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;->browserFragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    .line 31
    return-void
.end method
