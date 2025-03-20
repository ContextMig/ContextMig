.class public Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;
.super Ljava/lang/Object;
.source "HeaderFooterListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static FOOTER_TYPE:I

.field public static HEADER_TYPE:I

.field public static REFRESHABLE_LIST_TYPE:I

.field public static TYPE_COUNT_WITHOUT_REFRESHABLE_LIST:I


# instance fields
.field private footerSize:I

.field private headerSize:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterView:Landroid/view/View;

.field mHeaderView:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6a2d0389158be98L    # -4.04203520057139E276

    const-string v2, "chan/android/app/pocketnote/util/view/HeaderFooterListAdapter"

    const/16 v3, 0x44

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    const/4 v1, 0x2

    sput v1, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->TYPE_COUNT_WITHOUT_REFRESHABLE_LIST:I

    .line 11
    const/4 v1, 0x0

    sput v1, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->HEADER_TYPE:I

    .line 12
    sget v1, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->HEADER_TYPE:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->FOOTER_TYPE:I

    .line 13
    sget v1, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->FOOTER_TYPE:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->REFRESHABLE_LIST_TYPE:I

    const/16 v1, 0x43

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->headerSize:I

    .line 19
    iput v1, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->footerSize:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 48
    iget-object v0, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    aput-boolean v1, v2, v0

    .line 49
    iget-boolean v0, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAreAllFixedViewsSelectable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    aput-boolean v1, v2, v0

    :goto_0
    const/4 v0, 0x0

    const/4 v3, 0x6

    aput-boolean v1, v2, v3

    :goto_1
    const/4 v3, 0x7

    aput-boolean v1, v2, v3

    .line 51
    :goto_2
    return v0

    .line 49
    :cond_0
    iget-object v0, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_1

    .line 51
    :cond_2
    const/16 v0, 0x8

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_2
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 87
    iget-object v0, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    aput-boolean v3, v1, v0

    .line 88
    iget v0, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->headerSize:I

    iget v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->footerSize:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    const/16 v2, 0x19

    aput-boolean v3, v1, v2

    .line 90
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->headerSize:I

    iget v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->footerSize:I

    add-int/2addr v0, v2

    const/16 v2, 0x1a

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoInit()[Z

    move-result-object v3

    .line 96
    iget v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->headerSize:I

    if-ge p1, v2, :cond_0

    .line 97
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mHeaderView:Landroid/view/View;

    const/16 v4, 0x1b

    aput-boolean v5, v3, v4

    .line 109
    .local v0, "adapterCount":I
    .local v1, "adjPosition":I
    :goto_0
    return-object v2

    .line 100
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_0
    iget v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->headerSize:I

    sub-int v1, p1, v2

    .line 101
    .restart local v1    # "adjPosition":I
    const/4 v0, 0x0

    .line 102
    .restart local v0    # "adapterCount":I
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    const/16 v2, 0x1c

    aput-boolean v5, v3, v2

    .line 109
    :goto_1
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mFooterView:Landroid/view/View;

    const/16 v4, 0x21

    aput-boolean v5, v3, v4

    goto :goto_0

    .line 102
    :cond_1
    const/16 v2, 0x1d

    aput-boolean v5, v3, v2

    .line 103
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 104
    if-lt v1, v0, :cond_2

    const/16 v2, 0x1e

    aput-boolean v5, v3, v2

    goto :goto_1

    :cond_2
    const/16 v2, 0x1f

    aput-boolean v5, v3, v2

    .line 105
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    const/16 v4, 0x20

    aput-boolean v5, v3, v4

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 114
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    const/16 v2, 0x22

    aput-boolean v5, v1, v2

    .line 121
    .local v0, "adapterCount":I
    :goto_0
    const-wide/16 v2, -0x1

    const/16 v4, 0x28

    aput-boolean v5, v1, v4

    :goto_1
    return-wide v2

    .line 114
    .end local v0    # "adapterCount":I
    :cond_0
    iget v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->headerSize:I

    if-ge p1, v2, :cond_1

    const/16 v2, 0x23

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 115
    :cond_1
    iget v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->headerSize:I

    sub-int v2, p1, v2

    const/16 v3, 0x24

    aput-boolean v5, v1, v3

    .line 116
    iget-object v3, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 117
    .restart local v0    # "adapterCount":I
    if-lt v2, v0, :cond_2

    const/16 v2, 0x25

    aput-boolean v5, v1, v2

    goto :goto_0

    :cond_2
    const/16 v3, 0x26

    aput-boolean v5, v1, v3

    .line 118
    iget-object v3, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    const/16 v4, 0x27

    aput-boolean v5, v1, v4

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 152
    iget v1, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->headerSize:I

    if-ge p1, v1, :cond_0

    .line 153
    sget v1, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->HEADER_TYPE:I

    const/16 v3, 0x33

    aput-boolean v4, v2, v3

    .line 164
    .local v0, "adapterCount":I
    :goto_0
    return v1

    .line 156
    .end local v0    # "adapterCount":I
    :cond_0
    iget-object v1, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_1

    const/16 v1, 0x34

    aput-boolean v4, v2, v1

    .line 164
    .restart local v0    # "adapterCount":I
    :goto_1
    sget v1, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->FOOTER_TYPE:I

    const/16 v3, 0x3a

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 156
    .end local v0    # "adapterCount":I
    :cond_1
    iget v1, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->headerSize:I

    if-ge p1, v1, :cond_2

    const/16 v1, 0x35

    aput-boolean v4, v2, v1

    goto :goto_1

    .line 157
    :cond_2
    iget v1, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->headerSize:I

    sub-int v1, p1, v1

    const/16 v3, 0x36

    aput-boolean v4, v2, v3

    .line 158
    iget-object v3, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 159
    .restart local v0    # "adapterCount":I
    if-lt v1, v0, :cond_3

    const/16 v1, 0x37

    aput-boolean v4, v2, v1

    goto :goto_1

    :cond_3
    const/16 v3, 0x38

    aput-boolean v4, v2, v3

    .line 160
    iget-object v3, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    sget v3, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->REFRESHABLE_LIST_TYPE:I

    add-int/2addr v1, v3

    const/16 v3, 0x39

    aput-boolean v4, v2, v3

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoInit()[Z

    move-result-object v3

    .line 134
    iget v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->headerSize:I

    if-ge p1, v2, :cond_0

    .line 135
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mHeaderView:Landroid/view/View;

    const/16 v4, 0x2c

    aput-boolean v5, v3, v4

    .line 147
    .local v0, "adapterCount":I
    .local v1, "adjPosition":I
    :goto_0
    return-object v2

    .line 138
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_0
    iget v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->headerSize:I

    sub-int v1, p1, v2

    .line 139
    .restart local v1    # "adjPosition":I
    const/4 v0, 0x0

    .line 140
    .restart local v0    # "adapterCount":I
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    const/16 v2, 0x2d

    aput-boolean v5, v3, v2

    .line 147
    :goto_1
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mFooterView:Landroid/view/View;

    const/16 v4, 0x32

    aput-boolean v5, v3, v4

    goto :goto_0

    .line 140
    :cond_1
    const/16 v2, 0x2e

    aput-boolean v5, v3, v2

    .line 141
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 142
    if-lt v1, v0, :cond_2

    const/16 v2, 0x2f

    aput-boolean v5, v3, v2

    goto :goto_1

    :cond_2
    const/16 v2, 0x30

    aput-boolean v5, v3, v2

    .line 143
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x31

    aput-boolean v5, v3, v4

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 169
    iget-object v0, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    const/16 v0, 0x3b

    aput-boolean v1, v2, v0

    .line 170
    iget-object v0, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    sget v3, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->TYPE_COUNT_WITHOUT_REFRESHABLE_LIST:I

    add-int/2addr v0, v3

    const/16 v3, 0x3c

    aput-boolean v1, v2, v3

    .line 172
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3d

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    iget-object v1, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public hasStableIds()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 126
    iget-object v0, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    aput-boolean v3, v1, v0

    .line 127
    iget-object v0, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    const/16 v2, 0x2a

    aput-boolean v3, v1, v2

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0x2b

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 177
    iget-object v0, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/16 v0, 0x3e

    aput-boolean v1, v2, v0

    :goto_0
    const/16 v0, 0x40

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_1
    const/16 v3, 0x42

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    iget-object v0, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3f

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/16 v3, 0x41

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoInit()[Z

    move-result-object v3

    .line 57
    iget v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->headerSize:I

    if-ge p1, v2, :cond_0

    .line 58
    const/16 v2, 0x9

    aput-boolean v1, v3, v2

    .line 68
    .local v0, "adjPosition":I
    :goto_0
    return v1

    .line 61
    .end local v0    # "adjPosition":I
    :cond_0
    iget v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->headerSize:I

    sub-int v0, p1, v2

    .line 62
    .restart local v0    # "adjPosition":I
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    const/16 v2, 0xa

    aput-boolean v1, v3, v2

    .line 68
    :goto_1
    const/4 v2, 0x0

    const/16 v4, 0xf

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0

    .line 62
    :cond_1
    const/16 v2, 0xb

    aput-boolean v1, v3, v2

    .line 63
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    const/16 v2, 0xc

    aput-boolean v1, v3, v2

    goto :goto_1

    :cond_2
    const/16 v2, 0xd

    aput-boolean v1, v3, v2

    .line 64
    iget-object v2, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    const/16 v4, 0xe

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    iget-object v1, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_0

    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    .line 76
    :goto_0
    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    return-void

    .line 73
    :cond_0
    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    .line 74
    iget-object v1, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    iget-object v1, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_0

    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    .line 83
    :goto_0
    const/16 v1, 0x17

    aput-boolean v2, v0, v1

    return-void

    .line 80
    :cond_0
    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    .line 81
    iget-object v1, p0, Lchan/android/app/pocketnote/util/view/HeaderFooterListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
