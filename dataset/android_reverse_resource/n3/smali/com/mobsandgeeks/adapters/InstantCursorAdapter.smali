.class public abstract Lcom/mobsandgeeks/adapters/InstantCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "InstantCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/CursorAdapter;"
    }
.end annotation


# instance fields
.field private mInstantAdapterCore:Lcom/mobsandgeeks/adapters/InstantAdapterCore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mobsandgeeks/adapters/InstantAdapterCore",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/Class;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResourceId"    # I
    .param p4, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantCursorAdapter;, "Lcom/mobsandgeeks/adapters/InstantCursorAdapter<TT;>;"
    .local p3, "dataType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p4, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 47
    new-instance v0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;ILjava/lang/Class;)V

    iput-object v0, p0, Lcom/mobsandgeeks/adapters/InstantCursorAdapter;->mInstantAdapterCore:Lcom/mobsandgeeks/adapters/InstantAdapterCore;

    .line 49
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 56
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantCursorAdapter;, "Lcom/mobsandgeeks/adapters/InstantCursorAdapter<TT;>;"
    invoke-virtual {p0, p3}, Lcom/mobsandgeeks/adapters/InstantCursorAdapter;->getInstance(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "instance":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/mobsandgeeks/adapters/InstantCursorAdapter;->mInstantAdapterCore:Lcom/mobsandgeeks/adapters/InstantAdapterCore;

    const/4 v2, 0x0

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->bindToView(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;I)V

    .line 58
    return-void
.end method

.method public abstract getInstance(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantCursorAdapter;, "Lcom/mobsandgeeks/adapters/InstantCursorAdapter<TT;>;"
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/InstantCursorAdapter;->mInstantAdapterCore:Lcom/mobsandgeeks/adapters/InstantAdapterCore;

    invoke-virtual {v0, p1, p3}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->createNewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setViewHandler(ILcom/mobsandgeeks/adapters/ViewHandler;)V
    .locals 1
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mobsandgeeks/adapters/ViewHandler",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantCursorAdapter;, "Lcom/mobsandgeeks/adapters/InstantCursorAdapter<TT;>;"
    .local p2, "viewHandler":Lcom/mobsandgeeks/adapters/ViewHandler;, "Lcom/mobsandgeeks/adapters/ViewHandler<TT;>;"
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/InstantCursorAdapter;->mInstantAdapterCore:Lcom/mobsandgeeks/adapters/InstantAdapterCore;

    invoke-virtual {v0, p1, p2}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->setViewHandler(ILcom/mobsandgeeks/adapters/ViewHandler;)V

    .line 76
    return-void
.end method
