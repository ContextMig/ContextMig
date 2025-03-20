.class Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CitySearchResultsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haringeymobile/ukweather/CitySearchResultsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityNameAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final cityNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/haringeymobile/ukweather/CitySearchResultsDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xf8293bb9ddfdc58L    # 5.842663378501563E-234

    const-string v2, "com/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/haringeymobile/ukweather/CitySearchResultsDialog;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 158
    iput-object p1, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->this$0:Lcom/haringeymobile/ukweather/CitySearchResultsDialog;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->cityNames:Ljava/util/List;

    .line 160
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setBackgroundForListRow(ILandroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 196
    rem-int/lit8 v1, p1, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    .line 197
    sget v1, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->BACKGROUND_RESOURCE_ODD:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    .line 201
    :goto_0
    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    return-void

    .line 199
    :cond_0
    const v1, 0x7f020075

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->cityNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 155
    check-cast p1, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->onBindViewHolder(Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;I)V

    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onBindViewHolder(Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 171
    iget-object v0, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->cityNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 172
    invoke-static {p1}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;->access$000(Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    .line 174
    invoke-static {p1}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;->access$000(Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->setBackgroundForListRow(ILandroid/view/View;)V

    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    .line 176
    iget-object v0, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->this$0:Lcom/haringeymobile/ukweather/CitySearchResultsDialog;

    invoke-virtual {v0}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    .line 177
    invoke-static {p1}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;->access$000(Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v0, 0x8

    aput-boolean v3, v1, v0

    .line 179
    invoke-static {p1}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;->access$000(Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter$1;-><init>(Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 164
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03003e

    const/4 v3, 0x0

    aput-boolean v4, v1, v4

    .line 165
    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    .line 166
    new-instance v2, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;

    invoke-direct {v2, v0}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;-><init>(Landroid/widget/TextView;)V

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    return-object v2
.end method
