.class public abstract Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;
.super Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;
.source "BaseCityCursorAdapter.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field static final BACKGROUND_RESOURCE_EVEN:I = 0x7f020075

.field static BACKGROUND_RESOURCE_ODD:I

.field protected static final COLUMNS_TO_DISPLAY:[Ljava/lang/String;

.field private static final LOADER_ALL_CITY_RECORDS:I

.field protected static final TO:[I


# instance fields
.field onClickListener:Landroid/view/View$OnClickListener;

.field protected parentActivity:Landroid/app/Activity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x186b17d452ab6524L    # -9.31509422293295E190

    const-string v2, "com/haringeymobile/ukweather/BaseCityCursorAdapter"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "Name"

    aput-object v2, v1, v4

    sput-object v1, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->COLUMNS_TO_DISPLAY:[Ljava/lang/String;

    .line 36
    new-array v1, v3, [I

    const v2, 0x7f0c008b

    aput v2, v1, v4

    sput-object v1, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->TO:[I

    const/16 v1, 0xf

    aput-boolean v3, v0, v1

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IILandroid/view/View$OnClickListener;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    invoke-direct/range {p0 .. p6}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 51
    iput-object p7, p0, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    .line 53
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    aput-boolean v4, v0, v4

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f010003

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 55
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    sput v1, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->BACKGROUND_RESOURCE_ODD:I

    .line 56
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    return-void
.end method


# virtual methods
.method getCityId(I)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    .line 78
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    .line 79
    const-string v2, "Id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v2, 0x9

    aput-boolean v3, v1, v2

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    const/16 v2, 0xa

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method getCityName(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 91
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/16 v2, 0xb

    aput-boolean v3, v1, v2

    .line 92
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    aput-boolean v3, v1, v2

    .line 93
    const-string v2, "Name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0xe

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    rem-int/lit8 v2, p1, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    .line 62
    sget v2, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->BACKGROUND_RESOURCE_ODD:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 66
    :goto_0
    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    return-object v0

    .line 64
    :cond_0
    const v2, 0x7f020075

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    goto :goto_0
.end method
