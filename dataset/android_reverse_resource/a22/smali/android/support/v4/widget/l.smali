.class public abstract Landroid/support/v4/widget/l;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/support/v4/widget/p;
.implements Landroid/widget/Filterable;


# static fields
.field public static final FLAG_AUTO_REQUERY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_REGISTER_CONTENT_OBSERVER:I = 0x2


# instance fields
.field protected mAutoRequery:Z

.field protected mChangeObserver:Landroid/support/v4/widget/m;

.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorFilter:Landroid/support/v4/widget/o;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDataValid:Z

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field protected mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/widget/l;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/l;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/widget/l;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/l;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/l;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/widget/l;->mDataValid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/l;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v4/widget/l;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/l;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, v1}, Landroid/support/v4/widget/l;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    :goto_0
    return-object p2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursorFilter:Landroid/support/v4/widget/o;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/o;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/o;-><init>(Landroid/support/v4/widget/p;)V

    iput-object v0, p0, Landroid/support/v4/widget/l;->mCursorFilter:Landroid/support/v4/widget/o;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursorFilter:Landroid/support/v4/widget/o;

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/l;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/l;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3

    const-wide/16 v0, 0x0

    iget-boolean v2, p0, Landroid/support/v4/widget/l;->mDataValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/support/v4/widget/l;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/widget/l;->mDataValid:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/l;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v4/widget/l;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/l;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, v1}, Landroid/support/v4/widget/l;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method init(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    and-int/lit8 v2, p3, 0x1

    if-ne v2, v0, :cond_2

    or-int/lit8 p3, p3, 0x2

    iput-boolean v0, p0, Landroid/support/v4/widget/l;->mAutoRequery:Z

    :goto_0
    if-eqz p2, :cond_3

    :goto_1
    iput-object p2, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    iput-boolean v0, p0, Landroid/support/v4/widget/l;->mDataValid:Z

    iput-object p1, p0, Landroid/support/v4/widget/l;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    :goto_2
    iput v1, p0, Landroid/support/v4/widget/l;->mRowIDColumn:I

    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    new-instance v1, Landroid/support/v4/widget/m;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/m;-><init>(Landroid/support/v4/widget/l;)V

    iput-object v1, p0, Landroid/support/v4/widget/l;->mChangeObserver:Landroid/support/v4/widget/m;

    new-instance v1, Landroid/support/v4/widget/n;

    invoke-direct {v1, p0, v3}, Landroid/support/v4/widget/n;-><init>(Landroid/support/v4/widget/l;Landroid/support/v4/widget/l$1;)V

    iput-object v1, p0, Landroid/support/v4/widget/l;->mDataSetObserver:Landroid/database/DataSetObserver;

    :goto_3
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/l;->mChangeObserver:Landroid/support/v4/widget/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/l;->mChangeObserver:Landroid/support/v4/widget/m;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/l;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/l;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void

    :cond_2
    iput-boolean v1, p0, Landroid/support/v4/widget/l;->mAutoRequery:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    goto :goto_2

    :cond_5
    iput-object v3, p0, Landroid/support/v4/widget/l;->mChangeObserver:Landroid/support/v4/widget/m;

    iput-object v3, p0, Landroid/support/v4/widget/l;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_3
.end method

.method protected init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/widget/l;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/l;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onContentChanged()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/l;->mAutoRequery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/widget/l;->mDataValid:Z

    :cond_0
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/l;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/l;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/l;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/l;->mChangeObserver:Landroid/support/v4/widget/m;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/l;->mChangeObserver:Landroid/support/v4/widget/m;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/l;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/l;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iput-object p1, p0, Landroid/support/v4/widget/l;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_5

    iget-object v1, p0, Landroid/support/v4/widget/l;->mChangeObserver:Landroid/support/v4/widget/m;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/l;->mChangeObserver:Landroid/support/v4/widget/m;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    iget-object v1, p0, Landroid/support/v4/widget/l;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/l;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_4
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/l;->mRowIDColumn:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/widget/l;->mDataValid:Z

    invoke-virtual {p0}, Landroid/support/v4/widget/l;->notifyDataSetChanged()V

    goto :goto_0

    :cond_5
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/l;->mRowIDColumn:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/widget/l;->mDataValid:Z

    invoke-virtual {p0}, Landroid/support/v4/widget/l;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
