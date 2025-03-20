.class public Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;
.super Lcom/mobeta/android/dslv/ResourceDragSortCursorAdapter;
.source "SimpleDragSortCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;,
        Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mCursorToStringConverter:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

.field protected mFrom:[I

.field mOriginalFrom:[Ljava/lang/String;

.field private mStringConversionColumn:I

.field protected mTo:[I

.field private mViewBinder:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/ResourceDragSortCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    .line 87
    iput-object p5, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 88
    iput-object p4, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 89
    invoke-direct {p0, p3, p4}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "flags"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/mobeta/android/dslv/ResourceDragSortCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    .line 114
    iput-object p5, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 115
    iput-object p4, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 116
    invoke-direct {p0, p3, p4}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "from"    # [Ljava/lang/String;

    .prologue
    .line 335
    if-eqz p1, :cond_2

    .line 337
    array-length v0, p2

    .line 338
    .local v0, "count":I
    iget-object v2, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    array-length v2, v2

    if-eq v2, v0, :cond_1

    .line 339
    :cond_0
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    .line 341
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 342
    iget-object v2, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    aget-object v3, p2, v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    .line 347
    :cond_3
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    .line 146
    .local v0, "binder":Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;
    iget-object v8, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    array-length v2, v8

    .line 147
    .local v2, "count":I
    iget-object v3, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    .line 148
    .local v3, "from":[I
    iget-object v6, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 150
    .local v6, "to":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_5

    .line 151
    aget v8, v6, v4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 152
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_2

    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, "bound":Z
    if-eqz v0, :cond_0

    .line 155
    aget v8, v3, v4

    invoke-interface {v0, v7, p3, v8}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v1

    .line 158
    :cond_0
    if-nez v1, :cond_2

    .line 159
    aget v8, v3, v4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "text":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 161
    const-string v5, ""

    .line 164
    :cond_1
    instance-of v8, v7, Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 165
    check-cast v7, Landroid/widget/TextView;

    .end local v7    # "v":Landroid/view/View;
    invoke-virtual {p0, v7, v5}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 150
    .end local v1    # "bound":Z
    .end local v5    # "text":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    .restart local v1    # "bound":Z
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v7    # "v":Landroid/view/View;
    :cond_3
    instance-of v8, v7, Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    .line 167
    check-cast v7, Landroid/widget/ImageView;

    .end local v7    # "v":Landroid/view/View;
    invoke-virtual {p0, v7, v5}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 169
    .restart local v7    # "v":Landroid/view/View;
    :cond_4
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not a  view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 175
    .end local v1    # "bound":Z
    .end local v5    # "text":Ljava/lang/String;
    .end local v7    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    invoke-interface {v0, p1}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    .line 320
    :cond_0
    iget v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 321
    iget v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_1
    invoke-super {p0, p1}, Lcom/mobeta/android/dslv/ResourceDragSortCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getCursorToStringConverter()Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    return-object v0
.end method

.method public getStringConversionColumn()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    return v0
.end method

.method public getViewBinder()Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    return-object v0
.end method

.method public setCursorToStringConverter(Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;)V
    .locals 0
    .param p1, "cursorToStringConverter"    # Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    .line 303
    return-void
.end method

.method public setStringConversionColumn(I)V
    .locals 0
    .param p1, "stringConversionColumn"    # I

    .prologue
    .line 270
    iput p1, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    .line 271
    return-void
.end method

.method public setViewBinder(Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;)V
    .locals 0
    .param p1, "viewBinder"    # Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    .line 200
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 219
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 355
    invoke-super {p0, p1}, Lcom/mobeta/android/dslv/ResourceDragSortCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
