.class public Lme/writeily/adapter/FileAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private filteredData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/adapter/FileAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4ae0e2c022a1a965L    # -8.121199682113826E-53

    const-string v2, "me/writeily/adapter/FileAdapter"

    const/16 v3, 0x1a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/adapter/FileAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lme/writeily/adapter/FileAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lme/writeily/adapter/FileAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lme/writeily/adapter/FileAdapter;->data:Ljava/util/ArrayList;

    .line 31
    iget-object v1, p0, Lme/writeily/adapter/FileAdapter;->data:Ljava/util/ArrayList;

    iput-object v1, p0, Lme/writeily/adapter/FileAdapter;->filteredData:Ljava/util/ArrayList;

    .line 32
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lme/writeily/adapter/FileAdapter;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/adapter/FileAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iget-object v1, p0, Lme/writeily/adapter/FileAdapter;->data:Ljava/util/ArrayList;

    const/16 v2, 0x18

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$102(Lme/writeily/adapter/FileAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/adapter/FileAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iput-object p1, p0, Lme/writeily/adapter/FileAdapter;->filteredData:Ljava/util/ArrayList;

    const/16 v1, 0x19

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/adapter/FileAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    iget-object v1, p0, Lme/writeily/adapter/FileAdapter;->filteredData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    aput-boolean v2, v0, v2

    return v1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/adapter/FileAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    new-instance v1, Lme/writeily/adapter/FileAdapter$1;

    invoke-direct {v1, p0}, Lme/writeily/adapter/FileAdapter$1;-><init>(Lme/writeily/adapter/FileAdapter;)V

    const/16 v2, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItem(I)Ljava/io/File;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/adapter/FileAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 41
    iget-object v0, p0, Lme/writeily/adapter/FileAdapter;->filteredData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/adapter/FileAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-virtual {p0, p1}, Lme/writeily/adapter/FileAdapter;->getItem(I)Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x17

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lme/writeily/adapter/FileAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    int-to-long v2, p1

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lme/writeily/adapter/FileAdapter;->$jacocoInit()[Z

    move-result-object v3

    .line 51
    iget-object v0, p0, Lme/writeily/adapter/FileAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x4

    aput-boolean v7, v3, v1

    .line 52
    iget-object v1, p0, Lme/writeily/adapter/FileAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lme/writeily/adapter/FileAdapter;->context:Landroid/content/Context;

    const v4, 0x7f0600b4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x5

    aput-boolean v7, v3, v1

    .line 54
    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const/4 v0, 0x6

    aput-boolean v7, v3, v0

    .line 55
    const v0, 0x7f0c0073

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x7

    aput-boolean v7, v3, v1

    .line 56
    const v1, 0x7f0c0074

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    aput-boolean v7, v3, v2

    .line 57
    const v2, 0x7f0c0072

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v6, 0x9

    aput-boolean v7, v3, v6

    .line 59
    invoke-virtual {p0, p1}, Lme/writeily/adapter/FileAdapter;->getItem(I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0xa

    aput-boolean v7, v3, v6

    .line 60
    invoke-virtual {p0, p1}, Lme/writeily/adapter/FileAdapter;->getItem(I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xb

    aput-boolean v7, v3, v1

    .line 63
    iget-object v1, p0, Lme/writeily/adapter/FileAdapter;->context:Landroid/content/Context;

    const v6, 0x7f06007b

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    aput-boolean v7, v3, v1

    .line 64
    iget-object v1, p0, Lme/writeily/adapter/FileAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x106000b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0xd

    aput-boolean v7, v3, v0

    .line 66
    invoke-virtual {p0, p1}, Lme/writeily/adapter/FileAdapter;->getItem(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    aput-boolean v7, v3, v0

    .line 67
    iget-object v0, p0, Lme/writeily/adapter/FileAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0xf

    aput-boolean v7, v3, v0

    .line 81
    :goto_0
    const/16 v0, 0x15

    aput-boolean v7, v3, v0

    return-object v5

    .line 69
    :cond_0
    iget-object v0, p0, Lme/writeily/adapter/FileAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x10

    aput-boolean v7, v3, v0

    goto :goto_0

    .line 72
    :cond_1
    iget-object v1, p0, Lme/writeily/adapter/FileAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0013

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    aput-boolean v7, v3, v0

    .line 74
    invoke-virtual {p0, p1}, Lme/writeily/adapter/FileAdapter;->getItem(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x12

    aput-boolean v7, v3, v0

    .line 75
    iget-object v0, p0, Lme/writeily/adapter/FileAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x13

    aput-boolean v7, v3, v0

    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lme/writeily/adapter/FileAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x14

    aput-boolean v7, v3, v0

    goto :goto_0
.end method
