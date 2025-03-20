.class Lcom/mobsandgeeks/adapters/InstantAdapterCore;
.super Ljava/lang/Object;
.source "InstantAdapterCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;,
        Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAnnotatedViewIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mDateFormatCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mFormatStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutResourceId:I

.field private mViewHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mobsandgeeks/adapters/ViewHandler",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private mViewIdsAndMetaCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;ILjava/lang/Class;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/widget/ListAdapter;
    .param p3, "layoutResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ListAdapter;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    .local p4, "dataType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'context\' cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    if-nez p3, :cond_2

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid \'layoutResourceId\', please check again."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    if-nez p4, :cond_3

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'dataType\' cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_3
    iput-object p1, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mContext:Landroid/content/Context;

    .line 94
    iput p3, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mLayoutResourceId:I

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 96
    iput-object p4, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mDataType:Ljava/lang/Class;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mViewHandlers:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mAnnotatedViewIds:Ljava/util/Set;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mViewIdsAndMetaCache:Landroid/util/SparseArray;

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mDateFormatCache:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mFormatStringCache:Landroid/util/SparseArray;

    .line 104
    invoke-direct {p0}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->findAnnotatedMethods()V

    .line 105
    return-void
.end method

.method private applyDatePattern(ILcom/mobsandgeeks/adapters/InstantText;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "instantText"    # Lcom/mobsandgeeks/adapters/InstantText;
    .param p3, "returnValue"    # Ljava/lang/Object;

    .prologue
    .line 370
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    iget-object v5, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mDateFormatCache:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 371
    .local v2, "index":I
    const/4 v3, 0x0

    .line 372
    .local v3, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    const/4 v4, 0x0

    .line 374
    .local v4, "text":Ljava/lang/String;
    const/4 v5, -0x1

    if-le v2, v5, :cond_2

    .line 375
    iget-object v5, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mDateFormatCache:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 387
    .restart local v3    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 388
    invoke-virtual {v3, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 391
    :cond_1
    return-object v4

    .line 377
    :cond_2
    invoke-interface {p2}, Lcom/mobsandgeeks/adapters/InstantText;->datePatternResId()I

    move-result v1

    .line 378
    .local v1, "datePatternRes":I
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "datePattern":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 382
    new-instance v3, Ljava/text/SimpleDateFormat;

    .end local v3    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 383
    .restart local v3    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    iget-object v5, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mDateFormatCache:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 378
    .end local v0    # "datePattern":Ljava/lang/String;
    :cond_3
    invoke-interface {p2}, Lcom/mobsandgeeks/adapters/InstantText;->datePattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private applyFormatString(ILcom/mobsandgeeks/adapters/InstantText;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "instantText"    # Lcom/mobsandgeeks/adapters/InstantText;
    .param p3, "dateFormattedString"    # Ljava/lang/String;
    .param p4, "returnValue"    # Ljava/lang/Object;

    .prologue
    .line 396
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    iget-object v4, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mFormatStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 397
    .local v3, "index":I
    const/4 v0, 0x0

    .line 398
    .local v0, "formatString":Ljava/lang/String;
    move-object v2, p3

    .line 400
    .local v2, "formatted":Ljava/lang/String;
    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    .line 401
    iget-object v4, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mFormatStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "formatString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 409
    .restart local v0    # "formatString":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 410
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p3, :cond_3

    .end local p3    # "dateFormattedString":Ljava/lang/String;
    :goto_1
    aput-object p3, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 414
    :cond_0
    return-object v2

    .line 403
    .restart local p3    # "dateFormattedString":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Lcom/mobsandgeeks/adapters/InstantText;->formatStringResId()I

    move-result v1

    .line 404
    .local v1, "formatStringRes":I
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    :goto_2
    iget-object v4, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mFormatStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 404
    :cond_2
    invoke-interface {p2}, Lcom/mobsandgeeks/adapters/InstantText;->formatString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .end local v1    # "formatStringRes":I
    :cond_3
    move-object p3, p4

    .line 410
    goto :goto_1
.end method

.method private assertMethodIsPublic(Ljava/lang/reflect/Method;)V
    .locals 5
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 273
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "%s.%s() should be public"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mDataType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    return-void
.end method

.method private assertNoParamsOrSingleContextParam(Ljava/lang/reflect/Method;)V
    .locals 9
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 280
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 281
    .local v3, "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v3

    .line 282
    .local v1, "nParameters":I
    if-lez v1, :cond_1

    .line 283
    const-string v4, "%s.%s() can have a single Context parameter or should have no parameters."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mDataType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "errorMessage":Ljava/lang/String;
    array-length v4, v3

    if-ne v4, v7, :cond_0

    .line 287
    aget-object v2, v3, v8

    .line 288
    .local v2, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Landroid/content/Context;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 289
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 291
    .end local v2    # "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    array-length v4, v3

    if-le v4, v7, :cond_1

    .line 292
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 295
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private assertNonVoidReturnType(Ljava/lang/reflect/Method;)V
    .locals 5
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 298
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Methods with void return types cannot be annotated, check %s.%s()"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mDataType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    return-void
.end method

.method private executeViewHandlers(Landroid/util/SparseArray;Landroid/view/View;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 10
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "view"    # Landroid/view/View;
    .param p5, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    .local p1, "holders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;>;"
    .local p4, "instance":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mViewHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 420
    .local v8, "nViewHandlers":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_3

    .line 421
    iget-object v1, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mViewHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 422
    .local v9, "viewId":I
    iget-object v1, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mViewHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/adapters/ViewHandler;

    .line 424
    .local v0, "viewHandler":Lcom/mobsandgeeks/adapters/ViewHandler;, "Lcom/mobsandgeeks/adapters/ViewHandler<TT;>;"
    if-nez v0, :cond_0

    .line 420
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 426
    :cond_0
    iget v1, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mLayoutResourceId:I

    if-ne v9, v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mAdapter:Landroid/widget/ListAdapter;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/mobsandgeeks/adapters/ViewHandler;->handleView(Landroid/widget/ListAdapter;Landroid/view/View;Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_1

    .line 429
    :cond_1
    invoke-virtual {p1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;

    .line 430
    .local v6, "holder":Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;
    const/4 v3, 0x0

    .line 431
    .local v3, "viewWithId":Landroid/view/View;
    if-eqz v6, :cond_2

    .line 432
    iget-object v3, v6, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;->view:Landroid/view/View;

    .line 437
    :goto_2
    iget-object v1, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mAdapter:Landroid/widget/ListAdapter;

    move-object v2, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/mobsandgeeks/adapters/ViewHandler;->handleView(Landroid/widget/ListAdapter;Landroid/view/View;Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_1

    .line 434
    :cond_2
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 435
    new-instance v1, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;-><init>(Landroid/view/View;Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;)V

    invoke-virtual {p1, v9, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_2

    .line 440
    .end local v0    # "viewHandler":Lcom/mobsandgeeks/adapters/ViewHandler;, "Lcom/mobsandgeeks/adapters/ViewHandler<TT;>;"
    .end local v3    # "viewWithId":Landroid/view/View;
    .end local v6    # "holder":Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;
    .end local v9    # "viewId":I
    :cond_3
    return-void
.end method

.method private findAnnotatedMethods()V
    .locals 2

    .prologue
    .line 232
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mDataType:Ljava/lang/Class;

    .line 234
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-direct {p0, v0}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->findAnnotatedMethods(Ljava/lang/Class;)V

    .line 235
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 236
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    return-void
.end method

.method private findAnnotatedMethods(Ljava/lang/Class;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 249
    .local v4, "declaredMethods":[Ljava/lang/reflect/Method;
    move-object v2, v4

    .local v2, "arr$":[Ljava/lang/reflect/Method;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v2    # "arr$":[Ljava/lang/reflect/Method;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v10, v2, v6

    .line 250
    .local v10, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 251
    .local v1, "annotations":[Ljava/lang/annotation/Annotation;
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v0, v3, v5

    .line 252
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-direct {p0, v0}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->isInstantAnnotation(Ljava/lang/annotation/Annotation;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 254
    invoke-direct {p0, v10}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->assertMethodIsPublic(Ljava/lang/reflect/Method;)V

    .line 255
    invoke-direct {p0, v10}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->assertNoParamsOrSingleContextParam(Ljava/lang/reflect/Method;)V

    .line 256
    invoke-direct {p0, v10}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->assertNonVoidReturnType(Ljava/lang/reflect/Method;)V

    .line 259
    new-instance v9, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;

    invoke-direct {v9, v0, v10}, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;-><init>(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V

    .line 260
    .local v9, "meta":Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;
    instance-of v11, v0, Lcom/mobsandgeeks/adapters/InstantText;

    if-eqz v11, :cond_0

    .line 261
    iget-object v11, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mViewIdsAndMetaCache:Landroid/util/SparseArray;

    check-cast v0, Lcom/mobsandgeeks/adapters/InstantText;

    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lcom/mobsandgeeks/adapters/InstantText;->viewId()I

    move-result v12

    invoke-virtual {v11, v12, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 251
    .end local v9    # "meta":Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 249
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_0

    .line 266
    .end local v1    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v3    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v8    # "len$":I
    .end local v10    # "method":Ljava/lang/reflect/Method;
    :cond_2
    return-void
.end method

.method private invokeReflectedMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    .local p2, "instance":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x1

    .line 330
    const/4 v3, 0x0

    .line 333
    .local v3, "returnValue":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 334
    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v2

    .line 335
    .local v1, "nParameters":I
    if-nez v1, :cond_1

    .line 336
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 348
    .end local v1    # "nParameters":I
    .end local v2    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "returnValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v3

    .line 337
    .restart local v1    # "nParameters":I
    .restart local v2    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v3    # "returnValue":Ljava/lang/Object;
    :cond_1
    if-ne v1, v4, :cond_0

    .line 338
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {p1, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    goto :goto_0

    .line 340
    .end local v1    # "nParameters":I
    .end local v2    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 342
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 344
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private isInstantAnnotation(Ljava/lang/annotation/Annotation;)Z
    .locals 2
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 269
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mobsandgeeks/adapters/InstantText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateAnnotatedViews(Landroid/util/SparseArray;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 12
    .param p2, "parent"    # Landroid/view/View;
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;",
            ">;",
            "Landroid/view/View;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    .local p1, "holders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;>;"
    .local p3, "instance":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 308
    .local v9, "nHolders":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_3

    .line 309
    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;

    .line 310
    .local v6, "holder":Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;
    iget-object v8, v6, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;->meta:Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;

    .line 311
    .local v8, "meta":Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;
    if-nez v8, :cond_1

    .line 308
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 313
    :cond_1
    iget-object v1, v8, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;->method:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, p3}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->invokeReflectedMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 316
    .local v10, "returnValue":Ljava/lang/Object;
    iget-object v1, v6, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;->view:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 317
    .local v11, "viewType":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    invoke-direct {p0, v6, v10}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->updateTextView(Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;Ljava/lang/Object;)V

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mViewHandlers:Landroid/util/SparseArray;

    iget-object v2, v6, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/adapters/ViewHandler;

    .line 323
    .local v0, "viewHandler":Lcom/mobsandgeeks/adapters/ViewHandler;, "Lcom/mobsandgeeks/adapters/ViewHandler<TT;>;"
    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, v6, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;->view:Landroid/view/View;

    move-object v2, p2

    move-object v4, p3

    move/from16 v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/mobsandgeeks/adapters/ViewHandler;->handleView(Landroid/widget/ListAdapter;Landroid/view/View;Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_1

    .line 327
    .end local v0    # "viewHandler":Lcom/mobsandgeeks/adapters/ViewHandler;, "Lcom/mobsandgeeks/adapters/ViewHandler<TT;>;"
    .end local v6    # "holder":Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;
    .end local v8    # "meta":Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;
    .end local v10    # "returnValue":Ljava/lang/Object;
    .end local v11    # "viewType":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :cond_3
    return-void
.end method

.method private updateTextView(Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;Ljava/lang/Object;)V
    .locals 5
    .param p1, "holder"    # Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;
    .param p2, "returnValue"    # Ljava/lang/Object;

    .prologue
    .line 352
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    iget-object v4, p1, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;->meta:Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;

    iget-object v0, v4, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/adapters/InstantText;

    .line 353
    .local v0, "instantText":Lcom/mobsandgeeks/adapters/InstantText;
    iget-object v2, p1, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    .line 354
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v3

    .line 356
    .local v3, "viewId":I
    const/4 v1, 0x0

    .line 357
    .local v1, "text":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 358
    invoke-direct {p0, v3, v0, p2}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->applyDatePattern(ILcom/mobsandgeeks/adapters/InstantText;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-direct {p0, v3, v0, v1, p2}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->applyFormatString(ILcom/mobsandgeeks/adapters/InstantText;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 360
    if-nez v1, :cond_0

    .line 361
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    :cond_0
    invoke-interface {v0}, Lcom/mobsandgeeks/adapters/InstantText;->isHtml()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    return-void
.end method


# virtual methods
.method public final bindToView(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    .local p3, "instance":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mLayoutResourceId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 119
    .local v1, "holders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;>;"
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->updateAnnotatedViews(Landroid/util/SparseArray;Landroid/view/View;Ljava/lang/Object;I)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 120
    invoke-direct/range {v0 .. v5}, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->executeViewHandlers(Landroid/util/SparseArray;Landroid/view/View;Landroid/view/View;Ljava/lang/Object;I)V

    .line 121
    return-void
.end method

.method public final createNewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    const/4 v11, 0x0

    .line 131
    iget-object v8, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v9, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mLayoutResourceId:I

    invoke-virtual {v8, v9, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 132
    .local v5, "view":Landroid/view/View;
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 134
    .local v0, "holders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;>;"
    iget-object v8, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mViewIdsAndMetaCache:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 135
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 136
    iget-object v8, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mViewIdsAndMetaCache:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 137
    .local v7, "viewId":I
    iget-object v8, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mViewIdsAndMetaCache:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;

    .line 138
    .local v3, "meta":Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 139
    .local v6, "viewFromLayout":Landroid/view/View;
    if-nez v6, :cond_0

    .line 140
    const-string v8, "Cannot find View, check the \'viewId\' attribute on method %s.%s()"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mDataType:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    const/4 v10, 0x1

    iget-object v11, v3, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "message":Ljava/lang/String;
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 145
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    new-instance v8, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;

    invoke-direct {v8, v6, v3}, Lcom/mobsandgeeks/adapters/InstantAdapterCore$Holder;-><init>(Landroid/view/View;Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;)V

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 146
    iget-object v8, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mAnnotatedViewIds:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v3    # "meta":Lcom/mobsandgeeks/adapters/InstantAdapterCore$Meta;
    .end local v6    # "viewFromLayout":Landroid/view/View;
    .end local v7    # "viewId":I
    :cond_1
    iget v8, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mLayoutResourceId:I

    invoke-virtual {v5, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 150
    return-object v5
.end method

.method public getViewHandler(I)Lcom/mobsandgeeks/adapters/ViewHandler;
    .locals 1
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mobsandgeeks/adapters/ViewHandler",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mViewHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/adapters/ViewHandler;

    return-object v0
.end method

.method public getViewHandlers()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mobsandgeeks/adapters/ViewHandler",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mViewHandlers:Landroid/util/SparseArray;

    return-object v0
.end method

.method public removeAllViewHandlers()V
    .locals 1

    .prologue
    .line 201
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mViewHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 202
    return-void
.end method

.method public removeViewHandler(I)V
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 194
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mViewHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 195
    return-void
.end method

.method public setViewHandler(ILcom/mobsandgeeks/adapters/ViewHandler;)V
    .locals 2
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mobsandgeeks/adapters/ViewHandler",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/mobsandgeeks/adapters/InstantAdapterCore;, "Lcom/mobsandgeeks/adapters/InstantAdapterCore<TT;>;"
    .local p2, "viewHandler":Lcom/mobsandgeeks/adapters/ViewHandler;, "Lcom/mobsandgeeks/adapters/ViewHandler<TT;>;"
    if-nez p2, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'viewHandler\' cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/mobsandgeeks/adapters/InstantAdapterCore;->mViewHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    return-void
.end method
