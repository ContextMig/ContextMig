.class Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RelocationBatchError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/RelocationBatchError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/RelocationBatchError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 506
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 579
    const/4 v0, 0x1

    .line 580
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 588
    :goto_0
    if-nez v2, :cond_1

    .line 589
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string/jumbo v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 584
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 585
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 586
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 591
    :cond_1
    const-string/jumbo v4, "from_lookup"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 592
    const/4 v1, 0x0

    .line 593
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    const-string/jumbo v4, "from_lookup"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 594
    sget-object v4, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 595
    invoke-static {v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v3

    .line 636
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    .local v3, "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    :goto_1
    if-nez v0, :cond_2

    .line 637
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 638
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 640
    :cond_2
    return-object v3

    .line 597
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    :cond_3
    const-string/jumbo v4, "from_write"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 598
    const/4 v1, 0x0

    .line 599
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/WriteError;
    const-string/jumbo v4, "from_write"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 600
    sget-object v4, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    .line 601
    invoke-static {v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->fromWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v3

    .line 602
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    goto :goto_1

    .line 603
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/WriteError;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    :cond_4
    const-string/jumbo v4, "to"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 604
    const/4 v1, 0x0

    .line 605
    .restart local v1    # "fieldValue":Lcom/dropbox/core/v2/files/WriteError;
    const-string/jumbo v4, "to"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 606
    sget-object v4, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    .line 607
    invoke-static {v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->to(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v3

    .line 608
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    goto :goto_1

    .line 609
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/WriteError;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    :cond_5
    const-string/jumbo v4, "cant_copy_shared_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 610
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationBatchError;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    goto :goto_1

    .line 612
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    :cond_6
    const-string/jumbo v4, "cant_nest_shared_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 613
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationBatchError;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    goto :goto_1

    .line 615
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    :cond_7
    const-string/jumbo v4, "cant_move_folder_into_itself"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 616
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationBatchError;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    goto :goto_1

    .line 618
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    :cond_8
    const-string/jumbo v4, "too_many_files"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 619
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationBatchError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    goto :goto_1

    .line 621
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    :cond_9
    const-string/jumbo v4, "duplicated_or_nested_paths"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 622
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationBatchError;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    goto :goto_1

    .line 624
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    :cond_a
    const-string/jumbo v4, "cant_transfer_ownership"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 625
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationBatchError;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    goto/16 :goto_1

    .line 627
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    :cond_b
    const-string/jumbo v4, "other"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 628
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationBatchError;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    goto/16 :goto_1

    .line 630
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    :cond_c
    const-string/jumbo v4, "too_many_write_operations"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 631
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationBatchError;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    goto/16 :goto_1

    .line 634
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchError;
    :cond_d
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/RelocationBatchError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/files/RelocationBatchError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 510
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$1;->$SwitchMap$com$dropbox$core$v2$files$RelocationBatchError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->tag()Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 568
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->tag()Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 513
    const-string/jumbo v0, "from_lookup"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 514
    const-string/jumbo v0, "from_lookup"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 515
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->access$000(Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 516
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 571
    :goto_0
    return-void

    .line 520
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 521
    const-string/jumbo v0, "from_write"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 522
    const-string/jumbo v0, "from_write"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 523
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->access$100(Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 524
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 528
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 529
    const-string/jumbo v0, "to"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 530
    const-string/jumbo v0, "to"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 531
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->access$200(Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 532
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 536
    :pswitch_3
    const-string/jumbo v0, "cant_copy_shared_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :pswitch_4
    const-string/jumbo v0, "cant_nest_shared_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :pswitch_5
    const-string/jumbo v0, "cant_move_folder_into_itself"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :pswitch_6
    const-string/jumbo v0, "too_many_files"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :pswitch_7
    const-string/jumbo v0, "duplicated_or_nested_paths"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :pswitch_8
    const-string/jumbo v0, "cant_transfer_ownership"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :pswitch_9
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :pswitch_a
    const-string/jumbo v0, "too_many_write_operations"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 505
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->serialize(Lcom/dropbox/core/v2/files/RelocationBatchError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
