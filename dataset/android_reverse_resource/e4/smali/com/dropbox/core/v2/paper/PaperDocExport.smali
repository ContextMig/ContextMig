.class Lcom/dropbox/core/v2/paper/PaperDocExport;
.super Lcom/dropbox/core/v2/paper/RefPaperDoc;
.source "PaperDocExport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/PaperDocExport$Serializer;
    }
.end annotation


# instance fields
.field protected final exportFormat:Lcom/dropbox/core/v2/paper/ExportFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)V
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "exportFormat"    # Lcom/dropbox/core/v2/paper/ExportFormat;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 33
    if-nez p2, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'exportFormat\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/PaperDocExport;->exportFormat:Lcom/dropbox/core/v2/paper/ExportFormat;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    if-ne p1, p0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 71
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 75
    check-cast v0, Lcom/dropbox/core/v2/paper/PaperDocExport;

    .line 76
    .local v0, "other":Lcom/dropbox/core/v2/paper/PaperDocExport;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocExport;->docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/PaperDocExport;->docId:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocExport;->docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/PaperDocExport;->docId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocExport;->exportFormat:Lcom/dropbox/core/v2/paper/ExportFormat;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/PaperDocExport;->exportFormat:Lcom/dropbox/core/v2/paper/ExportFormat;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocExport;->exportFormat:Lcom/dropbox/core/v2/paper/ExportFormat;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/PaperDocExport;->exportFormat:Lcom/dropbox/core/v2/paper/ExportFormat;

    .line 77
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/paper/ExportFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/paper/PaperDocExport;
    :cond_5
    move v1, v2

    .line 81
    goto :goto_0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocExport;->docId:Ljava/lang/String;

    return-object v0
.end method

.method public getExportFormat()Lcom/dropbox/core/v2/paper/ExportFormat;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocExport;->exportFormat:Lcom/dropbox/core/v2/paper/ExportFormat;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 58
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocExport;->exportFormat:Lcom/dropbox/core/v2/paper/ExportFormat;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 61
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/paper/RefPaperDoc;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 62
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocExport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocExport$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/PaperDocExport$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocExport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocExport$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/PaperDocExport$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
