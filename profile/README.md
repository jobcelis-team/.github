<div align="center">

# Jobcelis

### Event Infrastructure for Developers

Publish events, configure webhooks with advanced filters, receive real-time deliveries,<br>and schedule recurring jobs — all through a single API.

[![Website](https://img.shields.io/badge/Website-jobcelis.com-0969da?style=for-the-badge&logo=google-chrome&logoColor=white)](https://jobcelis.com)
[![API Docs](https://img.shields.io/badge/API_Docs-Swagger_UI-85ea2d?style=for-the-badge&logo=swagger&logoColor=black)](https://jobcelis.com/api/docs)
[![License](https://img.shields.io/badge/License-BSL_1.1-333?style=for-the-badge)](https://github.com/jobcelis-team/jobscelis/blob/main/LICENSE)

---

**Elixir/OTP** · **Phoenix 1.8** · **LiveView** · **PostgreSQL**

</div>

<br>

## Platform

<table>
  <tr>
    <td width="120" align="center">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/phoenix/phoenix-original.svg" width="40" alt="Phoenix">
      <br><strong>Core</strong>
    </td>
    <td>
      <a href="https://github.com/jobcelis-team/jobscelis"><strong>jobscelis</strong></a><br>
      REST API · Real-time Dashboard · Webhook Engine · Scheduled Jobs · Pipelines · GDPR · Security
    </td>
  </tr>
</table>

<br>

## SDKs & Tools

Official SDKs with **full API coverage** across **15 languages and tools**:

<table>
  <thead>
    <tr>
      <th align="left">Language</th>
      <th align="left">Package</th>
      <th align="center">Install</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/typescript/typescript-original.svg" width="16"> <a href="https://www.npmjs.com/package/@jobcelis/sdk">Node.js / TypeScript</a></td>
      <td><code>@jobcelis/sdk</code></td>
      <td align="center"><code>npm i @jobcelis/sdk</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" width="16"> <a href="https://pypi.org/project/jobcelis/">Python</a></td>
      <td><code>jobcelis</code></td>
      <td align="center"><code>pip install jobcelis</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/go/go-original.svg" width="16"> <a href="https://github.com/vladimirCeli/go-jobcelis">Go</a></td>
      <td><code>go-jobcelis</code></td>
      <td align="center"><code>go get github.com/vladimirCeli/go-jobcelis</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/php/php-original.svg" width="16"> <a href="https://github.com/vladimirCeli/jobcelis-php">PHP</a></td>
      <td><code>jobcelis/sdk</code></td>
      <td align="center"><code>composer require jobcelis/sdk</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-original.svg" width="16"> <a href="https://github.com/vladimirCeli/jobcelis-ruby">Ruby</a></td>
      <td><code>jobcelis</code></td>
      <td align="center"><code>gem install jobcelis</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/elixir/elixir-original.svg" width="16"> <a href="https://github.com/vladimirCeli/jobcelis-elixir">Elixir</a></td>
      <td><code>jobcelis</code></td>
      <td align="center"><code>{:jobcelis, "~> 1.0"}</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/csharp/csharp-original.svg" width="16"> <a href="https://github.com/vladimirCeli/jobcelis-dotnet">C# / .NET</a></td>
      <td><code>Jobcelis</code></td>
      <td align="center"><code>dotnet add package Jobcelis</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rust/rust-original.svg" width="16"> <a href="https://github.com/vladimirCeli/jobcelis-rust">Rust</a></td>
      <td><code>jobcelis</code></td>
      <td align="center"><code>cargo add jobcelis</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/swift/swift-original.svg" width="16"> <a href="https://github.com/vladimirCeli/jobcelis-swift">Swift</a></td>
      <td>SPM</td>
      <td align="center"><code>.package(url: "...jobcelis-swift")</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original.svg" width="16"> <a href="https://github.com/vladimirCeli/jobcelis-java">Java</a></td>
      <td><code>com.jobcelis</code></td>
      <td align="center">Maven / Gradle</td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/dart/dart-original.svg" width="16"> <a href="https://github.com/vladimirCeli/jobcelis-dart">Dart / Flutter</a></td>
      <td><code>jobcelis</code></td>
      <td align="center"><code>dart pub add jobcelis</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/kotlin/kotlin-original.svg" width="16"> <a href="https://github.com/vladimirCeli/jobcelis-kotlin">Kotlin</a></td>
      <td><code>com.jobcelis</code></td>
      <td align="center">Maven / Gradle</td>
    </tr>
    <tr>
      <td>🖥️ <a href="https://www.npmjs.com/package/@jobcelis/cli">CLI</a></td>
      <td><code>@jobcelis/cli</code></td>
      <td align="center"><code>npm i -g @jobcelis/cli</code></td>
    </tr>
    <tr>
      <td>⚡ <a href="https://github.com/jobcelis-team/jobscelis/tree/main/sdks/github-action">GitHub Action</a></td>
      <td>Action</td>
      <td align="center"><code>uses: jobcelis-team/jobscelis/sdks/github-action@main</code></td>
    </tr>
    <tr>
      <td>🏗️ <a href="https://github.com/vladimirCeli/terraform-provider-jobcelis">Terraform</a></td>
      <td>Provider</td>
      <td align="center"><code>source = "vladimirCeli/jobcelis"</code></td>
    </tr>
  </tbody>
</table>

<br>

## Highlights

<table>
  <tr>
    <td align="center" width="25%">
      <br>
      <strong>🔗 Webhooks</strong><br><br>
      Real-time POST deliveries with retries, circuit breaker, topic filters, and batch mode
      <br><br>
    </td>
    <td align="center" width="25%">
      <br>
      <strong>📅 Scheduled Jobs</strong><br><br>
      Cron expressions, recurring tasks, execution history, and external URL triggers
      <br><br>
    </td>
    <td align="center" width="25%">
      <br>
      <strong>🔒 Security</strong><br><br>
      Encryption at rest, MFA/TOTP, anomaly detection, audit log, and rate limiting
      <br><br>
    </td>
    <td align="center" width="25%">
      <br>
      <strong>🌍 GDPR</strong><br><br>
      Data export, right to erasure, consent management, and processing restrictions
      <br><br>
    </td>
  </tr>
  <tr>
    <td align="center">
      <br>
      <strong>📡 90+ API Endpoints</strong><br><br>
      JWT and API Key auth with OpenAPI 3.0 and interactive Swagger UI
      <br><br>
    </td>
    <td align="center">
      <br>
      <strong>⚡ Real-time</strong><br><br>
      LiveView dashboard, SSE streaming, WebSocket support, and live notifications
      <br><br>
    </td>
    <td align="center">
      <br>
      <strong>🔄 Pipelines</strong><br><br>
      Multi-step event processing workflows with transformations and chaining
      <br><br>
    </td>
    <td align="center">
      <br>
      <strong>👥 Teams</strong><br><br>
      Multi-project workspaces with owner, editor, and viewer roles
      <br><br>
    </td>
  </tr>
</table>

<br>

---

<div align="center">

**[Documentation](https://jobcelis.com/docs)** · **[API Reference](https://jobcelis.com/api/docs)** · **[Get Started](https://jobcelis.com/register)**

<sub>Built with Elixir/OTP for reliability and concurrency at scale.</sub>

</div>
