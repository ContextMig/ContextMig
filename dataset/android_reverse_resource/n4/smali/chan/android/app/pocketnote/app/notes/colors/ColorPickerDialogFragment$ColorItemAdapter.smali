.class public Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "ColorPickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field private items:[Lchan/android/app/pocketnote/app/notes/colors/ColorItem;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3a8f044e1d104d34L    # 1.2527592586706384E-26

    const-string v2, "chan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;[Lchan/android/app/pocketnote/app/notes/colors/ColorItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 67
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->context:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->items:[Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    .line 70
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;[Lchan/android/app/pocketnote/app/notes/colors/ColorItem;Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    invoke-direct {p0, p1, p2}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;-><init>(Landroid/content/Context;[Lchan/android/app/pocketnote/app/notes/colors/ColorItem;)V

    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->items:[Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    array-length v1, v1

    aput-boolean v2, v0, v2

    return v1
.end method

.method public getItem(I)Lchan/android/app/pocketnote/app/notes/colors/ColorItem;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 79
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->items:[Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    aget-object v1, v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    invoke-virtual {p0, p1}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->getItem(I)Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    move-result-object v1

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    const-wide/16 v2, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 90
    if-nez p2, :cond_0

    const/4 v1, 0x4

    aput-boolean v7, v2, v1

    .line 91
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->context:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v3, 0x5

    aput-boolean v7, v2, v3

    .line 92
    const v3, 0x7f03001a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "convertView":Landroid/view/View;
    const/4 v1, 0x6

    aput-boolean v7, v2, v1

    .line 93
    new-instance v1, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v3, 0x7

    aput-boolean v7, v2, v3

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    const/16 v3, 0x8

    aput-boolean v7, v2, v3

    .line 98
    .end local v0    # "convertView":Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->items:[Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    aget-object v3, v3, p1

    const/16 v4, 0xa

    aput-boolean v7, v2, v4

    .line 99
    iget-object v4, v1, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->getDrawableId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0xb

    aput-boolean v7, v2, v4

    .line 100
    iget-object v1, v1, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v3}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const/16 v1, 0xc

    aput-boolean v7, v2, v1

    return-object v0

    .line 96
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter$ViewHolder;

    const/16 v3, 0x9

    aput-boolean v7, v2, v3

    move-object v0, p2

    goto :goto_0
.end method
