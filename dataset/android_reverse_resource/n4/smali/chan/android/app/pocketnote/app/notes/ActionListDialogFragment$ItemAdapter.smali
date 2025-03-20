.class Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActionListDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6e7ea90779e0df10L    # -2.342262479615352E-224

    const-string v2, "chan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 94
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 96
    iput-object p2, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;->items:Ljava/util/List;

    .line 97
    aput-boolean v2, v0, v2

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 101
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getItem(I)Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 106
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 88
    invoke-virtual {p0, p1}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;->getItem(I)Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;

    move-result-object v1

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 111
    const-wide/16 v2, 0x0

    const/4 v1, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;->$jacocoInit()[Z

    move-result-object v3

    .line 117
    if-nez p2, :cond_0

    const/4 v1, 0x5

    aput-boolean v6, v3, v1

    .line 118
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030030

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "convertView":Landroid/view/View;
    const/4 v1, 0x6

    aput-boolean v6, v3, v1

    .line 119
    new-instance v1, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v2, 0x7

    aput-boolean v6, v3, v2

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0x8

    aput-boolean v6, v3, v2

    move-object v2, v1

    .line 124
    .end local v0    # "convertView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;

    const/16 v4, 0xa

    aput-boolean v6, v3, v4

    .line 125
    iget-object v4, v2, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter$ViewHolder;->item:Landroid/widget/TextView;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0xb

    aput-boolean v6, v3, v4

    .line 126
    iget-object v2, v2, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter$ViewHolder;->item:Landroid/widget/TextView;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;->getIconId()I

    move-result v1

    invoke-virtual {v2, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 127
    const/16 v1, 0xc

    aput-boolean v6, v3, v1

    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter$ViewHolder;

    const/16 v2, 0x9

    aput-boolean v6, v3, v2

    move-object v2, v1

    move-object v0, p2

    goto :goto_0
.end method
