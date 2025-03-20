.class final synthetic Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action0;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final arg$1:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder;

.field private final arg$2:[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder$$Lambda$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7561f0eebd23f2cL

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder$$Lambda$5"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder$$Lambda$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder;[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder$$Lambda$5;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder$$Lambda$5;->arg$1:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder;

    iput-object p2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder$$Lambda$5;->arg$2:[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static get$Lambda(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder;[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;)Lrx/functions/Action0;
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder$$Lambda$5;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder$$Lambda$5;

    invoke-direct {v1, p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder$$Lambda$5;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder;[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;)V

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public static lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder;[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;)Lrx/functions/Action0;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder$$Lambda$5;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder$$Lambda$5;

    invoke-direct {v1, p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder$$Lambda$5;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder;[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;)V

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public call()V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder$$Lambda$5;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder$$Lambda$5;->arg$1:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder;

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder$$Lambda$5;->arg$2:[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;

    invoke-static {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder;->access$lambda$4(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/deletelists/listadapter/DeleteListsItemViewHolder;[Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/TotalItem;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
