.class public Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomExAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$OnItemClickListener;,
        Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private activity:Landroid/app/Activity;

.field private data:Ljava/util/ArrayList;

.field i:I

.field public res:Landroid/content/res/Resources;

.field tempValues:Lcom/kvannli/simonkvannli/dailybudget/ListModel;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1a0ee7df7014fe56L    # -1.1349254957040578E183

    const-string v2, "com/kvannli/simonkvannli/dailybudget/CustomExAdapter"

    const/16 v3, 0x1f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    const/4 v1, 0x0

    sput-object v1, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->inflater:Landroid/view/LayoutInflater;

    const/16 v1, 0x1e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Landroid/content/res/Resources;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->tempValues:Lcom/kvannli/simonkvannli/dailybudget/ListModel;

    .line 25
    iput v4, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->i:I

    .line 31
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->activity:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->data:Ljava/util/ArrayList;

    .line 33
    iput-object p3, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->res:Landroid/content/res/Resources;

    .line 36
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->activity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    aput-boolean v3, v1, v4

    .line 37
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 39
    aput-boolean v3, v1, v3

    return-void
.end method

.method static synthetic access$000(Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;)Landroid/app/Activity;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->activity:Landroid/app/Activity;

    const/16 v2, 0x1d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 44
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 45
    const/4 v1, 0x2

    aput-boolean v0, v2, v1

    .line 46
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    aput-boolean v0, v2, v3

    move v0, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    int-to-long v2, p1

    const/4 v1, 0x5

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p2, "vi"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 74
    if-nez p2, :cond_0

    const/4 v0, 0x6

    aput-boolean v6, v2, v0

    .line 77
    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040027

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x7

    aput-boolean v6, v2, v0

    .line 81
    new-instance v1, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$ViewHolder;-><init>()V

    const/16 v0, 0x8

    aput-boolean v6, v2, v0

    .line 82
    const v0, 0x7f0e009f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const/16 v0, 0x9

    aput-boolean v6, v2, v0

    .line 83
    const v0, 0x7f0e00a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const/16 v0, 0xa

    aput-boolean v6, v2, v0

    .line 84
    const v0, 0x7f0e00a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v0, 0xb

    aput-boolean v6, v2, v0

    .line 85
    const v0, 0x7f0e0040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const/16 v0, 0xc

    aput-boolean v6, v2, v0

    .line 88
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xd

    aput-boolean v6, v2, v0

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const/16 v0, 0xf

    aput-boolean v6, v2, v0

    .line 95
    iget-object v0, v1, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const-string v3, "Currently no expenses..."

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    aput-boolean v6, v2, v0

    .line 96
    iget-object v0, v1, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const-string v1, "listed."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    aput-boolean v6, v2, v0

    .line 118
    :goto_1
    const/16 v0, 0x1b

    aput-boolean v6, v2, v0

    return-object p2

    .line 91
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$ViewHolder;

    const/16 v1, 0xe

    aput-boolean v6, v2, v1

    move-object v1, v0

    goto :goto_0

    .line 102
    :cond_1
    iput-object v7, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->tempValues:Lcom/kvannli/simonkvannli/dailybudget/ListModel;

    const/16 v0, 0x12

    aput-boolean v6, v2, v0

    .line 103
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->tempValues:Lcom/kvannli/simonkvannli/dailybudget/ListModel;

    const/16 v0, 0x13

    aput-boolean v6, v2, v0

    .line 107
    iget-object v0, v1, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->tempValues:Lcom/kvannli/simonkvannli/dailybudget/ListModel;

    invoke-virtual {v3}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x14

    aput-boolean v6, v2, v0

    .line 108
    iget-object v0, v1, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->tempValues:Lcom/kvannli/simonkvannli/dailybudget/ListModel;

    invoke-virtual {v3}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->getShow()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x15

    aput-boolean v6, v2, v0

    .line 109
    iget-object v0, v1, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->res:Landroid/content/res/Resources;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.androidexample.customlistview:drawable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->tempValues:Lcom/kvannli/simonkvannli/dailybudget/ListModel;

    const/16 v5, 0x16

    aput-boolean v6, v2, v5

    .line 111
    invoke-virtual {v4}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->getImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x17

    aput-boolean v6, v2, v4

    .line 110
    invoke-virtual {v1, v3, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x18

    aput-boolean v6, v2, v3

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v0, 0x19

    aput-boolean v6, v2, v0

    .line 116
    new-instance v0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$OnItemClickListener;

    invoke-direct {v0, p0, p1}, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$OnItemClickListener;-><init>(Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x1a

    aput-boolean v6, v2, v0

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 123
    const-string v1, "CustomAdapter"

    const-string v2, "=====Row button clicked====="

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/16 v1, 0x1c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
