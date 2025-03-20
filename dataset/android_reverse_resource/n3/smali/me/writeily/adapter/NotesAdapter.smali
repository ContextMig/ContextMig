.class public Lme/writeily/adapter/NotesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotesAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/io/File;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private filteredData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/adapter/NotesAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4bfe2af9d76925abL    # 1.1835426195102491E58

    const-string v2, "me/writeily/adapter/NotesAdapter"

    const/16 v3, 0x22

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/adapter/NotesAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lme/writeily/adapter/NotesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 34
    iput-object p1, p0, Lme/writeily/adapter/NotesAdapter;->context:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lme/writeily/adapter/NotesAdapter;->data:Ljava/util/List;

    .line 36
    iget-object v1, p0, Lme/writeily/adapter/NotesAdapter;->data:Ljava/util/List;

    iput-object v1, p0, Lme/writeily/adapter/NotesAdapter;->filteredData:Ljava/util/List;

    .line 37
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lme/writeily/adapter/NotesAdapter;)Ljava/util/List;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/adapter/NotesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lme/writeily/adapter/NotesAdapter;->data:Ljava/util/List;

    const/16 v2, 0x20

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$102(Lme/writeily/adapter/NotesAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/adapter/NotesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iput-object p1, p0, Lme/writeily/adapter/NotesAdapter;->filteredData:Ljava/util/List;

    const/16 v1, 0x21

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method private generateExtraForDirectory(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/adapter/NotesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 100
    iget-object v1, p0, Lme/writeily/adapter/NotesAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lme/writeily/adapter/NotesAdapter;->getItem(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const v4, 0x20015

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-boolean v5, v0, v2

    .line 102
    iget-object v2, p0, Lme/writeily/adapter/NotesAdapter;->context:Landroid/content/Context;

    const v3, 0x7f06003e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-boolean v5, v0, v2

    return-object v1
.end method

.method private generateExtraForFile(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/adapter/NotesAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 95
    invoke-virtual {p0, p1}, Lme/writeily/adapter/NotesAdapter;->getItem(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x18

    aput-boolean v5, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x1a

    aput-boolean v5, v2, v3

    .line 96
    iget-object v3, p0, Lme/writeily/adapter/NotesAdapter;->context:Landroid/content/Context;

    const v4, 0x7f060048

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b

    aput-boolean v5, v2, v1

    return-object v0

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lme/writeily/adapter/NotesAdapter;->getItem(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    const/16 v3, 0x19

    aput-boolean v5, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/adapter/NotesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iget-object v1, p0, Lme/writeily/adapter/NotesAdapter;->filteredData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    aput-boolean v2, v0, v2

    return v1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/adapter/NotesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    new-instance v1, Lme/writeily/adapter/NotesAdapter$1;

    invoke-direct {v1, p0}, Lme/writeily/adapter/NotesAdapter$1;-><init>(Lme/writeily/adapter/NotesAdapter;)V

    const/16 v2, 0x1e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItem(I)Ljava/io/File;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/adapter/NotesAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 46
    iget-object v0, p0, Lme/writeily/adapter/NotesAdapter;->filteredData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    invoke-static {}, Lme/writeily/adapter/NotesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-virtual {p0, p1}, Lme/writeily/adapter/NotesAdapter;->getItem(I)Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x1f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lme/writeily/adapter/NotesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    int-to-long v2, p1

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lme/writeily/adapter/NotesAdapter;->$jacocoInit()[Z

    move-result-object v3

    .line 56
    iget-object v0, p0, Lme/writeily/adapter/NotesAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x4

    aput-boolean v8, v3, v1

    .line 57
    iget-object v1, p0, Lme/writeily/adapter/NotesAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lme/writeily/adapter/NotesAdapter;->context:Landroid/content/Context;

    const v4, 0x7f0600b4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x5

    aput-boolean v8, v3, v1

    .line 59
    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const/4 v0, 0x6

    aput-boolean v8, v3, v0

    .line 60
    const v0, 0x7f0c0073

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x7

    aput-boolean v8, v3, v1

    .line 61
    const v1, 0x7f0c0074

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    aput-boolean v8, v3, v2

    .line 62
    const v2, 0x7f0c0072

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v6, 0x9

    aput-boolean v8, v3, v6

    .line 64
    sget-object v6, Lme/writeily/model/Constants;->MD_EXTENSION:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Lme/writeily/adapter/NotesAdapter;->getItem(I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0xa

    aput-boolean v8, v3, v6

    .line 66
    invoke-virtual {p0, p1}, Lme/writeily/adapter/NotesAdapter;->getItem(I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xb

    aput-boolean v8, v3, v6

    .line 67
    invoke-direct {p0, p1}, Lme/writeily/adapter/NotesAdapter;->generateExtraForFile(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xc

    aput-boolean v8, v3, v1

    .line 73
    :goto_0
    iget-object v1, p0, Lme/writeily/adapter/NotesAdapter;->context:Landroid/content/Context;

    const v6, 0x7f06007b

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xe

    aput-boolean v8, v3, v1

    .line 74
    iget-object v1, p0, Lme/writeily/adapter/NotesAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x106000b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0xf

    aput-boolean v8, v3, v0

    .line 76
    invoke-virtual {p0, p1}, Lme/writeily/adapter/NotesAdapter;->getItem(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    aput-boolean v8, v3, v0

    .line 77
    iget-object v0, p0, Lme/writeily/adapter/NotesAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x11

    aput-boolean v8, v3, v0

    .line 91
    :goto_1
    const/16 v0, 0x17

    aput-boolean v8, v3, v0

    return-object v5

    .line 69
    :cond_0
    invoke-direct {p0, p1}, Lme/writeily/adapter/NotesAdapter;->generateExtraForDirectory(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xd

    aput-boolean v8, v3, v1

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lme/writeily/adapter/NotesAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x12

    aput-boolean v8, v3, v0

    goto :goto_1

    .line 82
    :cond_2
    iget-object v1, p0, Lme/writeily/adapter/NotesAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0013

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x13

    aput-boolean v8, v3, v0

    .line 84
    invoke-virtual {p0, p1}, Lme/writeily/adapter/NotesAdapter;->getItem(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x14

    aput-boolean v8, v3, v0

    .line 85
    iget-object v0, p0, Lme/writeily/adapter/NotesAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x15

    aput-boolean v8, v3, v0

    goto :goto_1

    .line 87
    :cond_3
    iget-object v0, p0, Lme/writeily/adapter/NotesAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x16

    aput-boolean v8, v3, v0

    goto :goto_1
.end method
