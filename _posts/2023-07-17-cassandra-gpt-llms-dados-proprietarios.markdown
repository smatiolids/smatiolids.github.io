---
url: 2023-07-17-cassandra-gpt-llms-dados-proprietarios
layout: post
title: "Cassandra e GPT - Usando LLMs com dados proprietários"
date: 2023-07-17
categories: [videos, langflow, generative-ai, astradb]
youtubeId: q2qTffIPhD0
thumbnail_url: https://i.ytimg.com/vi/q2qTffIPhD0/mqdefault.jpg
author: Samuel Matioli
tags: [LLMs, Apache Cassandra, GPT]
language: Portuguese
---

Neste vídeo, exploramos como integrar LLMs, como o GPT, com o Apache Cassandra para enriquecer prompts com contexto adicional, utilizando dados proprietários. Aprenda a configurar um banco de dados Cassandra, gerar embeddings e usar esses dados para melhorar as respostas do GPT.

{% include youtubePlayer.html id=page.youtubeId  %}

## Principais pontos

- Treinamento de modelos LLM
- Instalação de dependências Python
- Criação e configuração de um banco Cassandra e DataStax Astra
- Uso de libraries Python (OpenAI e Cassandra)
- Conexão com Cassandra/Astra
- Criação de tabelas para armazenamento de vetores/embeddings
- Carregamento e geração de embeddings de dados de produtos
- Execução de prompts ampliados com dados proprietários
- Introdução ao Retrieval Augmented Generation (RAG)
- Uso de CassIO e LangChain

## Recursos adicionais

- [Notebook disponível](https://github.com/smatioli/astra-langchain/blob/main/ex1-Vector%20Explained.ipynb)
- [Documentação do Apache Cassandra](https://cassandra.apache.org/doc/latest/)
- [Guia de integração com OpenAI](https://beta.openai.com/docs/)