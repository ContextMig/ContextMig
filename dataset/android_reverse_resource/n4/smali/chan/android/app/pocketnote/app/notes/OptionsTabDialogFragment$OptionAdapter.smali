.class public Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;
.super Landroid/widget/BaseAdapter;
.source "OptionsTabDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final context:Landroid/content/Context;

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5e3e66a95c2f9219L    # -4.404327110844003E-146

    const-string v2, "chan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;->$jacocoData:[Z

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
            "Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 90
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;->context:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;->options:Ljava/util/List;

    .line 92
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 96
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    aput-boolean v2, v0, v2

    return v1
.end method

.method public getItem(I)Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 101
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;->options:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    invoke-virtual {p0, p1}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;->getItem(I)Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;

    move-result-object v1

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 106
    const-wide/16 v2, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;->$jacocoInit()[Z

    move-result-object v3

    .line 112
    if-nez p2, :cond_0

    const/4 v1, 0x4

    aput-boolean v6, v3, v1

    .line 113
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v2, 0x5

    aput-boolean v6, v3, v2

    .line 114
    const v2, 0x7f03002b

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "convertView":Landroid/view/View;
    const/4 v1, 0x6

    aput-boolean v6, v3, v1

    .line 115
    new-instance v1, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v2, 0x7

    aput-boolean v6, v3, v2

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    const/16 v2, 0x8

    aput-boolean v6, v3, v2

    move-object v2, v1

    .line 121
    .end local v0    # "convertView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;->options:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;

    const/16 v4, 0xa

    aput-boolean v6, v3, v4

    .line 122
    iget-object v4, v2, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;->getResourceId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v4, 0xb

    aput-boolean v6, v3, v4

    .line 123
    iget-object v2, v2, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const/16 v1, 0xc

    aput-boolean v6, v3, v1

    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter$ViewHolder;

    const/16 v2, 0x9

    aput-boolean v6, v3, v2

    move-object v2, v1

    move-object v0, p2

    goto :goto_0
.end method
