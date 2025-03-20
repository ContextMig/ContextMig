.class public Lcom/roomorama/caldroid/MonthPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MonthPagerAdapter.java"


# instance fields
.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roomorama/caldroid/DateGridFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x4

    return v0
.end method

.method public getFragments()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roomorama/caldroid/DateGridFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v1, p0, Lcom/roomorama/caldroid/MonthPagerAdapter;->fragments:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/roomorama/caldroid/MonthPagerAdapter;->fragments:Ljava/util/ArrayList;

    .line 24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/roomorama/caldroid/MonthPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/roomorama/caldroid/MonthPagerAdapter;->fragments:Ljava/util/ArrayList;

    new-instance v2, Lcom/roomorama/caldroid/DateGridFragment;

    invoke-direct {v2}, Lcom/roomorama/caldroid/DateGridFragment;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/roomorama/caldroid/MonthPagerAdapter;->fragments:Ljava/util/ArrayList;

    return-object v1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/roomorama/caldroid/MonthPagerAdapter;->getFragments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roomorama/caldroid/DateGridFragment;

    .line 42
    .local v0, "fragment":Lcom/roomorama/caldroid/DateGridFragment;
    return-object v0
.end method

.method public setFragments(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roomorama/caldroid/DateGridFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/roomorama/caldroid/DateGridFragment;>;"
    iput-object p1, p0, Lcom/roomorama/caldroid/MonthPagerAdapter;->fragments:Ljava/util/ArrayList;

    .line 33
    return-void
.end method
