.class Lcom/android/settings_ex/ig;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;

.field final synthetic Bu:Lcom/android/settings_ex/ir;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/ir;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/settings_ex/ig;->Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings_ex/ig;->Bu:Lcom/android/settings_ex/ir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/settings_ex/ig;->Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/settings_ex/ig;->Bu:Lcom/android/settings_ex/ir;

    invoke-virtual {v1, p3}, Lcom/android/settings_ex/ir;->ak(I)Lcom/android/settings_ex/iq;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->a(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/iq;)V

    .line 245
    return-void
.end method
