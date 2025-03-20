.class Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter$1;
.super Ljava/lang/Object;
.source "CitySearchResultsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->onBindViewHolder(Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;

.field final synthetic val$position:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2508a84ebe85fd68L

    const-string v2, "com/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter$1;->$jacocoInit()[Z

    move-result-object v0

    .line 179
    iput-object p1, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter$1;->this$1:Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;

    iput p2, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter$1;->$jacocoInit()[Z

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter$1;->this$1:Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;

    iget-object v1, v1, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->this$0:Lcom/haringeymobile/ukweather/CitySearchResultsDialog;

    invoke-virtual {v1}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    aput-boolean v3, v0, v3

    .line 184
    iget-object v1, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter$1;->this$1:Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;

    iget-object v1, v1, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter;->this$0:Lcom/haringeymobile/ukweather/CitySearchResultsDialog;

    invoke-static {v1}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->access$100(Lcom/haringeymobile/ukweather/CitySearchResultsDialog;)Lcom/haringeymobile/ukweather/CitySearchResultsDialog$OnCityNamesListItemClickedListener;

    move-result-object v1

    iget v2, p0, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$CityNameAdapter$1;->val$position:I

    invoke-interface {v1, v2}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog$OnCityNamesListItemClickedListener;->onFoundCityNamesItemClicked(I)V

    .line 185
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method
