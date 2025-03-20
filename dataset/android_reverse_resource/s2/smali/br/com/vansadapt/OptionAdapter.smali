.class public Lbr/com/vansadapt/OptionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OptionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field private optionList:[Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansadapt/OptionAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1d6aecba82142137L

    const-string v2, "br/com/vansadapt/OptionAdapter"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansadapt/OptionAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansadapt/OptionAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    const v1, 0x7f03001c

    invoke-direct {p0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 19
    iput-object p2, p0, Lbr/com/vansadapt/OptionAdapter;->optionList:[Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lbr/com/vansadapt/OptionAdapter;->context:Landroid/content/Context;

    .line 24
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/vansadapt/OptionAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    iget-object v1, p0, Lbr/com/vansadapt/OptionAdapter;->optionList:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/vansadapt/OptionAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    invoke-virtual {p0, p1}, Lbr/com/vansadapt/OptionAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansadapt/OptionAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    iget-object v1, p0, Lbr/com/vansadapt/OptionAdapter;->optionList:[Ljava/lang/String;

    aget-object v1, v1, p1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansadapt/OptionAdapter;->$jacocoInit()[Z

    move-result-object v3

    .line 41
    iget-object v2, p0, Lbr/com/vansadapt/OptionAdapter;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 43
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-eqz p2, :cond_0

    const/4 v2, 0x3

    aput-boolean v5, v3, v2

    .line 47
    :goto_0
    const v2, 0x7f0c005a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x6

    aput-boolean v5, v3, v4

    .line 48
    iget-object v4, p0, Lbr/com/vansadapt/OptionAdapter;->optionList:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const/4 v2, 0x7

    aput-boolean v5, v3, v2

    return-object p2

    .line 43
    :cond_0
    const/4 v2, 0x4

    aput-boolean v5, v3, v2

    .line 44
    const v2, 0x7f03001c

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "convertView":Landroid/view/View;
    const/4 v2, 0x5

    aput-boolean v5, v3, v2

    move-object p2, v0

    goto :goto_0
.end method
