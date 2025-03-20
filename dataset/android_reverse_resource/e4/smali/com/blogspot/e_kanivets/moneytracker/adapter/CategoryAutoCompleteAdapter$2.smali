.class Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$2;
.super Landroid/widget/Filter;
.source "CategoryAutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4bcb1eaaf98b00d9L    # 1.329950944103841E57

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$2"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$2;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$2;->this$0:Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$2;->$jacocoInit()[Z

    move-result-object v2

    .line 76
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 80
    .local v0, "filterResults":Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$2;->this$0:Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;

    invoke-static {v3}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->access$000(Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;)Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/blogspot/e_kanivets/moneytracker/util/CategoryAutoCompleter;->completeByPart(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    aput-boolean v5, v2, v5

    .line 83
    .end local v1    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 86
    const/4 v3, 0x3

    aput-boolean v5, v2, v3

    return-object v0

    .line 81
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    aput-boolean v5, v2, v3

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$2;->$jacocoInit()[Z

    move-result-object v1

    .line 91
    if-nez p2, :cond_0

    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    .line 94
    :goto_0
    if-nez p2, :cond_1

    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    .line 95
    :goto_1
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$2;->this$0:Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->notifyDataSetInvalidated()V

    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    .line 96
    :goto_2
    const/16 v0, 0xa

    aput-boolean v3, v1, v0

    return-void

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$2;->this$0:Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v2, v0}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->access$102(Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;Ljava/util/List;)Ljava/util/List;

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    goto :goto_0

    .line 94
    :cond_1
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-gtz v0, :cond_2

    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter$2;->this$0:Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/adapter/CategoryAutoCompleteAdapter;->notifyDataSetChanged()V

    const/16 v0, 0x8

    aput-boolean v3, v1, v0

    goto :goto_2
.end method
