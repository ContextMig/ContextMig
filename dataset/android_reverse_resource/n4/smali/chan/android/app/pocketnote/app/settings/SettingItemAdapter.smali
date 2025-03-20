.class public Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/settings/SettingItemAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final context:Landroid/content/Context;

.field final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6e8f645272022f3aL

    const-string v2, "chan/android/app/pocketnote/app/settings/SettingItemAdapter"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;->$jacocoData:[Z

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;->items:Ljava/util/List;

    .line 21
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

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    aput-boolean v2, v0, v2

    return v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-virtual {p0, p1}, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 30
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    const-wide/16 v2, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 41
    if-nez p2, :cond_0

    const/4 v1, 0x4

    aput-boolean v5, v2, v1

    .line 42
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v3, 0x5

    aput-boolean v5, v2, v3

    .line 43
    const v3, 0x7f030027

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "convertView":Landroid/view/View;
    const/4 v1, 0x6

    aput-boolean v5, v2, v1

    .line 44
    new-instance v1, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v3, 0x7

    aput-boolean v5, v2, v3

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    const/16 v3, 0x8

    aput-boolean v5, v2, v3

    .line 49
    .end local v0    # "convertView":Landroid/view/View;
    :goto_0
    iget-object v3, v1, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const/16 v1, 0xa

    aput-boolean v5, v2, v1

    return-object v0

    .line 47
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter$ViewHolder;

    const/16 v3, 0x9

    aput-boolean v5, v2, v3

    move-object v0, p2

    goto :goto_0
.end method
